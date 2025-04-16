import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smart_farm_admin/src/core/constants/user_data_constant.dart';
import 'package:smart_farm_admin/src/model/dto/farming_batch/farming_batch_dto.dart';
import 'package:smart_farm_admin/src/model/dto/merged_farming_batch/merged_farming_batch_dto.dart';
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

  Future<void> getFarmingBatchById(String id) async {
    try {
      emit(const FarmingBatchState.getFarmingBatchByIdInProgress());
      final farmingBatch = await _farmingBatchRepository.getFarmingBatchById(
        id,
      );
      emit(
        FarmingBatchState.getFarmingBatchByIdSuccess(
          farmingBatch: farmingBatch,
        ),
      );
    } catch (e) {
      emit(
        const FarmingBatchState.getFarmingBatchByIdFailure(
          error: 'get-farming-batch-by-id-error',
        ),
      );
    }
  }

  Future<void> getFarmingBatchByUserId() async {
    try {
      emit(const FarmingBatchState.getFarmingBatchByUserIdInProgress());
      final userBox = await Hive.openBox(UserDataConstant.userBoxName);
      final userId = userBox.get(UserDataConstant.userIdKey);
      final farmingBatch = await _farmingBatchRepository
          .getFarmingBatchByUserId(userId);
      emit(
        FarmingBatchState.getFarmingBatchByUserIdSuccess(
          farmingBatch: farmingBatch,
        ),
      );
    } catch (e) {
      emit(
        const FarmingBatchState.getFarmingBatchByUserIdFailure(
          error: 'get-farming-batch-by-user-id-error',
        ),
      );
    }
  }
}
