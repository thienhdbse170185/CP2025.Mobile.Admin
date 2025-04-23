import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:smart_farm_admin/src/core/constants/auth_data_constant.dart';
import 'package:smart_farm_admin/src/core/constants/user_data_constant.dart';
import 'package:smart_farm_admin/src/core/utils/jwt_decoder.dart';
import 'package:smart_farm_admin/src/model/repository/auth/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  AuthBloc({required this.authRepository}) : super(_Initial()) {
    on<_Login>((event, emit) async {
      emit(const AuthState.loginInProgress());
      try {
        log('[LOGIN_BLOC] Đang thực hiện đăng nhập...');
        final response = await authRepository.login(
          event.username,
          event.password,
        );
        log('[LOGIN_BLOC] Đăng nhập thành công!');
        final isValidPermission = _handleCheckPermission(
          accessToken: response.accessToken,
        );
        if (!isValidPermission) {
          emit(const AuthState.loginFailure('permission-denied'));
          return;
        }
        log('[LOGIN_BLOC] Đang lưu token vào bộ nhớ...');
        final box = await Hive.openBox(AuthDataConstant.authBoxName);
        log('[LOGIN] accessToken: ${response.accessToken}');
        log('[LOGIN] refreshToken: ${response.refreshToken}');
        await box.put(AuthDataConstant.accessTokenKey, response.accessToken);
        await box.put(AuthDataConstant.refreshTokenKey, response.refreshToken);
        log('[LOGIN_BLOC] Lưu token thành công!');
        emit(const AuthState.loginSuccess());
      } catch (e) {
        log('[LOGIN_BLOC] Quá trình đăng nhập có lỗi xảy ra!');
        log('[LOGIN_BLOC] Error: $e');
        if (e.toString().contains('wrong-credentials')) {
          emit(const AuthState.loginFailure('wrong-credentials'));
        }
        emit(const AuthState.loginFailure('auth-failure'));
      }
    });

    on<_Logout>((event, emit) async {
      emit(const AuthState.logoutInProgress());
      try {
        log('[LOGOUT_BLOC] Đang thực hiện đăng xuất...');
        final box = await Hive.openBox(AuthDataConstant.authBoxName);
        box.deleteAll([
          AuthDataConstant.accessTokenKey,
          AuthDataConstant.refreshTokenKey,
        ]);

        final userBox = await Hive.openBox(UserDataConstant.userBoxName);
        userBox.deleteAll([
          UserDataConstant.userIdKey,
          UserDataConstant.emailKey,
          UserDataConstant.roleKey,
          UserDataConstant.userNameKey,
        ]);
        log('[LOGOUT_BLOC] Đăng xuất thành công!');
        emit(const AuthState.logoutSuccess());
      } catch (e) {
        log('[LOGOUT_BLOC] Quá trình đăng xuất có lỗi xảy ra!');
        log('[LOGOUT_BLOC] Error: $e');
        emit(AuthState.logoutFailure('logout-failure'));
      }
    });
  }

  bool _handleCheckPermission({required String accessToken}) {
    log('[AUTH_BLOC] Đang kiểm tra quyền truy cập...');
    final decodedToken = JwtDecoder.decode(accessToken);
    log('[AUTH_BLOC] decodedToken: $decodedToken');
    final role = decodedToken['role'];
    log('[AUTH_BLOC] role: $role');
    if (role == 'Customer') {
      log('[AUTH_BLOC] Quyền truy cập hợp lệ!');
      return true;
    } else {
      log('[AUTH_BLOC] Quyền truy cập không hợp lệ!');
      return false;
    }
  }
}
