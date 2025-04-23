import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_farm_admin/src/model/dto/cage_admin/cage_admin_dto.dart';
import 'package:smart_farm_admin/src/model/repository/cage/cage_repository.dart';

part 'cage_bloc.freezed.dart';
part 'cage_event.dart';
part 'cage_state.dart';

class CageBloc extends Bloc<CageEvent, CageState> {
  final CageRepository cageRepository;
  CageBloc({required this.cageRepository}) : super(_Initial()) {
    on<_GetCageList>((event, emit) async {
      emit(CageState.getCageListInProgress());
      try {
        log('[CAGE_BLOC] Đang lấy danh sách chuồng đang hiện hành...');
        final response = await cageRepository.getAllCages();
        emit(CageState.getCageListSuccess(response.items));
      } catch (e) {
        log('[CAGE_BLOC] Lấy danh sách chuồng đang hiện hành thất bại!');
        log('[CAGE_BLOC] Error: $e');
        emit(CageState.getCageListFailure('get-cage-list-failure'));
      }
    });

    on<_GetCageDetail>((event, emit) async {
      emit(CageState.getCageDetailInProgress());
      try {
        log('[CAGE_BLOC] Đang lấy thông tin chi tiết chuồng...');
        final response = await cageRepository.getCageAdminById(
          cageId: event.cageId,
        );
        emit(CageState.getCageDetailSuccess(response));
      } catch (e) {
        log('[CAGE_BLOC] Lấy thông tin chi tiết chuồng thất bại!');
        log('[CAGE_BLOC] Error: $e');
        emit(CageState.getCageDetailFailure('get-cage-detail-failure'));
      }
    });
  }
}
