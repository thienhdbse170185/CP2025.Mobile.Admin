import 'dart:math';

import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:smart_farm_admin/src/core/constants/auth_data_constant.dart';

class DioInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final box = await Hive.openBox(AuthDataConstant.authBoxName);
    final token = box
        .get(AuthDataConstant.accessTokenKey); // Retrieve the token from Hive
    log(token);

    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    return super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Handle the error (e.g., token expiration, etc.)
    // You might want to refresh the token here and retry the request
    return super.onError(err, handler);
  }
}
