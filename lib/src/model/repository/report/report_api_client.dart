import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:smart_farm_admin/src/model/dto/report_farming_batch/report_farming_batch_dto.dart';

class ReportApiClient {
  final Dio dio;
  const ReportApiClient({required this.dio});

  Future<ReportFarmingBatchDto> getReportByFarmingBatchId({
    required String farmingBatchId,
  }) async {
    try {
      log('[REPORT_API_CLIENT] Đang lấy thông tin báo cáo vụ nuôi...');
      final response = await dio.get(
        '/farmingbatchs/$farmingBatchId/detailed-report',
      );
      if (response.statusCode == 200) {
        log('[REPORT_API_CLIENT] Lấy thông tin báo cáo vụ nuôi thành công!');
        return ReportFarmingBatchDto.fromJson(response.data['result']);
      } else {
        log('[REPORT_API_CLIENT] Lấy thông tin báo cáo vụ nuôi thất bại!');
        throw Exception('Lỗi không xác định!');
      }
    } on DioException catch (e) {
      log('[REPORT_API_CLIENT] Lấy thông tin báo cáo vụ nuôi thất bại!');
      log('[REPORT_API_CLIENT] ${e.message}');
      rethrow;
    }
  }
}
