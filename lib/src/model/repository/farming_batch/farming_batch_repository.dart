import 'package:smart_farm_admin/src/model/dto/farming_batch/farming_batch_dto.dart';
import 'package:smart_farm_admin/src/model/repository/farming_batch/farming_batch_api_client.dart';

class FarmingBatchRepository {
  final FarmingBatchApiClient _apiClient;
  const FarmingBatchRepository({required FarmingBatchApiClient apiClient})
    : _apiClient = apiClient;

  Future<List<FarmingBatchDto>> getFarmingBatches() async {
    try {
      final List<FarmingBatchDto> farmingBatches =
          await _apiClient.getFarmingBatches();
      return farmingBatches;
    } catch (e) {
      throw Exception('get-farming-batches-error');
    }
  }

  Future<FarmingBatchDto> getFarmingBatchById(String id) async {
    try {
      final FarmingBatchDto farmingBatch = await _apiClient.getFarmingBatchById(
        id,
      );
      return farmingBatch;
    } catch (e) {
      throw Exception('get-farming-batch-by-id-error');
    }
  }
}
