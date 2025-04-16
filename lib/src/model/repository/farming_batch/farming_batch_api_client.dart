import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:smart_farm_admin/src/model/dto/farming_batch/farming_batch_dto.dart';
import 'package:smart_farm_admin/src/model/dto/merged_farming_batch/merged_farming_batch_dto.dart';

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

  Future<FarmingBatchDto> getFarmingBatchById(String id) async {
    try {
      log(
        '[FARMING_BATCH_API_CLIENT] Đang lấy thông tin vụ nuôi với id: $id...',
      );
      final response = await dio.get('/farmingbatchs/$id');
      if (response.statusCode == 200) {
        log('[FARMING_BATCH_API_CLIENT] Lấy thông tin vụ nuôi thành công!');
        return FarmingBatchDto.fromJson(response.data['result']);
      } else {
        throw Exception('get-farming-batch-by-id-error');
      }
    } catch (e) {
      log('[FARMING_BATCH_API_CLIENT] Lỗi khi lấy thông tin vụ nuôi: $e');
      throw Exception('get-farming-batch-by-id-error');
    }
  }

  Future<List<MergedFarmingBatchDto>> getFarmingBatchByUserId(
    String userId,
  ) async {
    try {
      log(
        '[FARMING_BATCH_API_CLIENT] Đang lấy thông tin vụ nuôi với userId: $userId...',
      );
      final response = await dio.get('/farmingbatchs/customer/$userId');
      if (response.statusCode == 200) {
        log('[FARMING_BATCH_API_CLIENT] Lấy thông tin vụ nuôi thành công!');
        return (response.data['result'] as List<dynamic>)
            .map((e) => MergedFarmingBatchDto.fromJson(e))
            .toList();
      } else {
        throw Exception('get-farming-batch-by-user-id-error');
      }
    } catch (e) {
      log('[FARMING_BATCH_API_CLIENT] Lỗi khi lấy thông tin vụ nuôi: $e');
      throw Exception('get-farming-batch-by-user-id-error');
    }
  }
}
