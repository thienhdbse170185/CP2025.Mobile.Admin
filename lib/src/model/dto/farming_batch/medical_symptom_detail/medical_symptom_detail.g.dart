// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_symptom_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MedicalSymptomDetailImpl _$$MedicalSymptomDetailImplFromJson(
  Map<String, dynamic> json,
) => _$MedicalSymptomDetailImpl(
  id: json['id'] as String,
  diagnosis: json['diagnosis'] as String?,
  status: json['status'] as String,
  isEmergency: json['isEmergency'] as bool,
  notes: json['notes'] as String?,
  affectedQuantity: (json['affectedQuantity'] as num).toInt(),
  quantityInCage: (json['quantityInCage'] as num).toInt(),
);

Map<String, dynamic> _$$MedicalSymptomDetailImplToJson(
  _$MedicalSymptomDetailImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'diagnosis': instance.diagnosis,
  'status': instance.status,
  'isEmergency': instance.isEmergency,
  'notes': instance.notes,
  'affectedQuantity': instance.affectedQuantity,
  'quantityInCage': instance.quantityInCage,
};
