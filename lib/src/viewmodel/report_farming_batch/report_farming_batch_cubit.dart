import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_farm_admin/src/model/dto/report_farming_batch/report_farming_batch_dto.dart';
import 'package:smart_farm_admin/src/model/repository/report/report_repository.dart';

part 'report_farming_batch_state.dart';
part 'report_farming_batch_cubit.freezed.dart';

class ReportFarmingBatchCubit extends Cubit<ReportFarmingBatchState> {
  final ReportRepository reportRepository;
  ReportFarmingBatchCubit({required this.reportRepository})
    : super(ReportFarmingBatchState.initial());

  Future<void> getReportFarmingBatchByFarmingBatchId({
    required String farmingBatchId,
  }) async {
    emit(const ReportFarmingBatchState.getReportFarmingBatchInProgress());
    try {
      final report = await reportRepository.getReportByFarmingBatchId(
        farmingBatchId: farmingBatchId,
      );
      emit(
        ReportFarmingBatchState.getReportFarmingBatchSuccess(
          reportFarmingBatchDto: report,
        ),
      );
    } catch (e) {
      emit(
        ReportFarmingBatchState.getReportFarmingBatchFailure(
          error: e.toString(),
        ),
      );
    }
  }
}
