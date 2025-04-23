import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_farm_admin/src/model/dto/medical_symptom/medical_symptom_dto.dart';
import 'package:smart_farm_admin/src/model/repository/medical_symptom/medical_symptom_repository.dart';

part 'medical_symptom_state.dart';
part 'medical_symptom_cubit.freezed.dart';

class MedicalSymptomCubit extends Cubit<MedicalSymptomState> {
  final MedicalSymptomRepository medicalSymptomRepository;
  MedicalSymptomCubit({required this.medicalSymptomRepository})
    : super(MedicalSymptomState.initial());

  Future<void> getMedicalSymptomById({required String id}) async {
    emit(MedicalSymptomState.getMedicalSymptomByIdInProgress());
    try {
      final result = await medicalSymptomRepository.getMedicalSymptomById(id);
      emit(MedicalSymptomState.getMedicalSymptomByIdSuccess(result));
    } catch (e) {
      emit(MedicalSymptomState.getMedicalSymptomByIdFailure(e.toString()));
    }
  }
}
