// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'growth_stage_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GrowthStageDetailImpl _$$GrowthStageDetailImplFromJson(
  Map<String, dynamic> json,
) => _$GrowthStageDetailImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  ageStartDate: json['ageStartDate'] as String,
  ageEndDate: json['ageEndDate'] as String,
  weightAnimal: (json['weightAnimal'] as num).toDouble(),
  quantity: (json['quantity'] as num).toInt(),
  foodType: json['foodType'] as String,
  affectQuantity: (json['affectQuantity'] as num).toInt(),
  status: json['status'] as String,
  deadQuantity: (json['deadQuantity'] as num).toInt(),
  recommendedWeightPerSession:
      (json['recommendedWeightPerSession'] as num).toDouble(),
  weightBasedOnBodyMass: (json['weightBasedOnBodyMass'] as num).toDouble(),
);

Map<String, dynamic> _$$GrowthStageDetailImplToJson(
  _$GrowthStageDetailImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'ageStartDate': instance.ageStartDate,
  'ageEndDate': instance.ageEndDate,
  'weightAnimal': instance.weightAnimal,
  'quantity': instance.quantity,
  'foodType': instance.foodType,
  'affectQuantity': instance.affectQuantity,
  'status': instance.status,
  'deadQuantity': instance.deadQuantity,
  'recommendedWeightPerSession': instance.recommendedWeightPerSession,
  'weightBasedOnBodyMass': instance.weightBasedOnBodyMass,
};
