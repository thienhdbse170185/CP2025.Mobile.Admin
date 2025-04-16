part of 'report_farming_batch_cubit.dart';

@freezed
class ReportFarmingBatchState with _$ReportFarmingBatchState {
  const factory ReportFarmingBatchState.initial() = _Initial;

  const factory ReportFarmingBatchState.getReportFarmingBatchInProgress() =
      _GetReportFarmingBatchInProgress;
  const factory ReportFarmingBatchState.getReportFarmingBatchSuccess({
    required ReportFarmingBatchDto reportFarmingBatchDto,
  }) = _GetReportFarmingBatchSuccess;
  const factory ReportFarmingBatchState.getReportFarmingBatchFailure({
    required String error,
  }) = _GetReportFarmingBatchFailure;
}
