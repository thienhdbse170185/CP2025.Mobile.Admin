part of 'medical_symptom_cubit.dart';

@freezed
class MedicalSymptomState with _$MedicalSymptomState {
  const factory MedicalSymptomState.initial() = _Initial;

  const factory MedicalSymptomState.getMedicalSymptomByIdInProgress() =
      _GetMedicalSymptomByIdInProgress;
  const factory MedicalSymptomState.getMedicalSymptomByIdSuccess(
    MedicalSymptomDto medicalSymptom,
  ) = _GetMedicalSymptomByIdSuccess;
  const factory MedicalSymptomState.getMedicalSymptomByIdFailure(String error) =
      _GetMedicalSymptomByIdFailure;
}
