import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:smart_farm_admin/src/model/dto/farming_batch/farming_batch_dto.dart';

class FarmingBatchApiClient {
  final Dio dio;
  const FarmingBatchApiClient({required this.dio});

  Future<List<FarmingBatchDto>> getFarmingBatches() async {
    try {
      log('[FARMING_BATCH_API_CLIENT] Đang lấy danh sách vụ nuôi...');
      final response = await dio.get('/farmingbatchs');
      if (response.statusCode == 200) {
        log('[FARMING_BATCH_API_CLIENT] Lấy danh sách vụ nuôi thành công!');
        final List<dynamic> data = response.data['result']['items'];
        return data.map((e) => FarmingBatchDto.fromJson(e)).toList();
      } else {
        throw Exception('get-farming-batches-error');
      }
    } catch (e) {
      log('[FARMING_BATCH_API_CLIENT] Lỗi khi lấy danh sách vụ nuôi: $e');
      throw Exception('get-farming-batches-error');
    }
  }
}
