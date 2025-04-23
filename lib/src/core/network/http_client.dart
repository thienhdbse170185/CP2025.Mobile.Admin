import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:smart_farm_admin/src/core/network/interceptor.dart';

final dio = Dio(BaseOptions(baseUrl: '${dotenv.env['BASE_PROD_API_URL']}'))
  ..interceptors.add(DioInterceptor());
