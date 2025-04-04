import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_farm_admin/src/model/dto/farming_batch/farming_batch_dto.dart';
import 'package:smart_farm_admin/src/model/repository/farming_batch/farming_batch_repository.dart';

part 'farming_batch_cubit.freezed.dart';
part 'farming_batch_state.dart';

class FarmingBatchCubit extends Cubit<FarmingBatchState> {
  final FarmingBatchRepository _farmingBatchRepository;
  FarmingBatchCubit({required FarmingBatchRepository farmingBatchRepository})
    : _farmingBatchRepository = farmingBatchRepository,
      super(FarmingBatchState.initial());

  Future<void> getFarmingBatches() async {
    try {
      emit(const FarmingBatchState.getFarmingBatchesInProgress());
      final farmingBatches = await _farmingBatchRepository.getFarmingBatches();
      emit(
        FarmingBatchState.getFarmingBatchesSuccess(
          farmingBatches: farmingBatches,
        ),
      );
    } catch (e) {
      emit(
        const FarmingBatchState.getFarmingBatchesFailure(
          error: 'get-farming-batches-error',
        ),
      );
    }
  }
}
