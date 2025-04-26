import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_farm_admin/src/model/dto/prescription/prescription.dart';
import 'package:smart_farm_admin/src/model/request/symptom/create_symptom/create_symptom_request.dart';

part 'medical_symptom_dto.freezed.dart';
part 'medical_symptom_dto.g.dart';

@freezed
class MedicalSymptomDto with _$MedicalSymptomDto {
  factory MedicalSymptomDto({
    required String id,
    required String farmingBatchId,
    String? symptoms,
    String? diagnosis,
    @JsonKey(name: 'createAt') required DateTime createAt,
    required String status,
    required int affectedQuantity,
    int? quantity,
    required String nameAnimal,
    String? notes,
    required List<PictureSymptom>? pictures,
    PrescriptionDto? prescriptions,
  }) = _MedicalSymptomDto;

  factory MedicalSymptomDto.fromJson(Map<String, dynamic> json) =>
      _$MedicalSymptomDtoFromJson(json);
}
