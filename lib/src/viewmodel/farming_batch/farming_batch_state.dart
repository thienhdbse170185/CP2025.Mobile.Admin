part of 'farming_batch_cubit.dart';

@freezed
class FarmingBatchState with _$FarmingBatchState {
  const factory FarmingBatchState.initial() = _Initial;

  const factory FarmingBatchState.getFarmingBatchesInProgress() =
      _GetFarmingBatchesInProgress;
  const factory FarmingBatchState.getFarmingBatchesSuccess({
    required List<FarmingBatchDto> farmingBatches,
  }) = _GetFarmingBatchesSuccess;
  const factory FarmingBatchState.getFarmingBatchesFailure({
    required String error,
  }) = _GetFarmingBatchesFailure;

  const factory FarmingBatchState.getFarmingBatchByIdInProgress() =
      _GetFarmingBatchByIdInProgress;
  const factory FarmingBatchState.getFarmingBatchByIdSuccess({
    required FarmingBatchDto farmingBatch,
  }) = _GetFarmingBatchByIdSuccess;
  const factory FarmingBatchState.getFarmingBatchByIdFailure({
    required String error,
  }) = _GetFarmingBatchByIdFailure;
}
