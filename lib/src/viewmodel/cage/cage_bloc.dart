import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:data_layer/data_layer.dart';
import 'package:data_layer/model/dto/cage_admin/cage_admin_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
  }
}
