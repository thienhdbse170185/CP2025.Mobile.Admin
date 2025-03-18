import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:smart_farm_admin/src/core/constants/auth_data_constant.dart';
import 'package:smart_farm_admin/src/core/constants/user_data_constant.dart';
import 'package:smart_farm_admin/src/core/utils/jwt_decoder.dart';

part 'system_bloc.freezed.dart';
part 'system_event.dart';
part 'system_state.dart';

class SystemBloc extends Bloc<SystemEvent, SystemState> {
  SystemBloc() : super(_Initial()) {
    on<_AppStarted>((event, emit) async {
      emit(const SystemState.appStartedInProgress());
      log('[APP_STARTED] Đang khởi tạo dữ liệu cần thiết...');
      try {
        // get user info
        final authBox = await Hive.openBox(AuthDataConstant.authBoxName);
        final accessToken = authBox.get(AuthDataConstant.accessTokenKey);
        final decodedToken = JwtDecoder.decode(accessToken);

        // put userInfo to userBox
        final userBox = await Hive.openBox(UserDataConstant.userBoxName);
        userBox.putAll({
          UserDataConstant.userIdKey: decodedToken['nameid'],
          UserDataConstant.emailKey: decodedToken['email'],
          UserDataConstant.roleKey: decodedToken['role'],
          UserDataConstant.userNameKey: decodedToken['unique_name'],
          // UserDataConstant.serverTimeKey: dateTime,
        });

        if (accessToken != null && accessToken.isNotEmpty) {
          // await setupNotifications();
          // final signalRService =
          //     SignalRService(flutterLocalNotificationsPlugin);
          // await signalRService.connect(
          //     accessToken, dotenv.env['BASE_SIGNALR_URL']!);
          emit(const SystemState.appStartedSuccess());
        } else {
          emit(
            const SystemState.appStartedFailure(
              'Có lỗi xảy ra khi giải mã token',
            ),
          );
        }
      } catch (e) {
        log("[APP_STARTED] Error: $e");
        emit(SystemState.appStartedFailure(e.toString()));
      }
    });
  }
}
