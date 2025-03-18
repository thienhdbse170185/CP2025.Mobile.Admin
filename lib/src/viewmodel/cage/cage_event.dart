part of 'cage_bloc.dart';

@freezed
class CageEvent with _$CageEvent {
  const factory CageEvent.started() = _Started;

  const factory CageEvent.getCageList() = _GetCageList;

  const factory CageEvent.getCage({required String cageId}) = _GetCageDetail;
}
