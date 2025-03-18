part of 'cage_bloc.dart';

@freezed
class CageState with _$CageState {
  const factory CageState.initial() = _Initial;

  const factory CageState.getCageListInProgress() = _GetCageListInProgress;
  const factory CageState.getCageListSuccess(List<CageAdminDto> cages) =
      _GetCageListSuccess;
  const factory CageState.getCageListFailure(String message) =
      _GetCageListFailure;

  const factory CageState.getCageDetailInProgress() = _GetCageDetailInProgress;
  const factory CageState.getCageDetailSuccess(CageAdminDto cage) =
      _GetCageDetailSuccess;
  const factory CageState.getCageDetailFailure(String message) =
      _GetCageDetailFailure;
}
