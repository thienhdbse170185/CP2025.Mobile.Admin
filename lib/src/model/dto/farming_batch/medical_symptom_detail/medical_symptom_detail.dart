import 'package:freezed_annotation/freezed_annotation.dart';

part 'medical_symptom_detail.freezed.dart';
part 'medical_symptom_detail.g.dart';

@freezed
class MedicalSymptomDetail with _$MedicalSymptomDetail {
  factory MedicalSymptomDetail({
    required String id,
    String? diagnosis,
    required String status,
    required bool isEmergency,
    String? notes,
    required int affectedQuantity,
    required int quantityInCage,
  }) = _MedicalSymptomDetail;

  factory MedicalSymptomDetail.fromJson(Map<String, dynamic> json) =>
      _$MedicalSymptomDetailFromJson(json);
}
