// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrescriptionDetailImpl _$$PrescriptionDetailImplFromJson(
  Map<String, dynamic> json,
) => _$PrescriptionDetailImpl(
  prescriptionId: json['prescriptionId'] as String,
  diagnosis: json['diagnosis'] as String?,
  affectedQuantity: (json['affectedQuantity'] as num?)?.toInt() ?? 0,
  prescriptionPrice: (json['prescriptionPrice'] as num?)?.toInt() ?? 0,
  diseaseName: json['diseaseName'] as String? ?? "Unknown",
  diseaseDescription: json['diseaseDescription'] as String? ?? "N/A",
  symptoms:
      (json['symptoms'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$$PrescriptionDetailImplToJson(
  _$PrescriptionDetailImpl instance,
) => <String, dynamic>{
  'prescriptionId': instance.prescriptionId,
  'diagnosis': instance.diagnosis,
  'affectedQuantity': instance.affectedQuantity,
  'prescriptionPrice': instance.prescriptionPrice,
  'diseaseName': instance.diseaseName,
  'diseaseDescription': instance.diseaseDescription,
  'symptoms': instance.symptoms,
};
