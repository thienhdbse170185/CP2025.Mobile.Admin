import 'package:smart_farm_admin/src/model/dto/report_farming_batch/report_farming_batch_dto.dart';
import 'package:smart_farm_admin/src/model/repository/report/report_api_client.dart';

class ReportRepository {
  final ReportApiClient _apiClient;
  const ReportRepository({required ReportApiClient apiClient})
    : _apiClient = apiClient;

  Future<ReportFarmingBatchDto> getReportByFarmingBatchId({
    required String farmingBatchId,
  }) async {
    try {
      final report = await _apiClient.getReportByFarmingBatchId(
        farmingBatchId: farmingBatchId,
      );
      return report;
    } on Exception catch (e) {
      rethrow;
    }
  }
}
