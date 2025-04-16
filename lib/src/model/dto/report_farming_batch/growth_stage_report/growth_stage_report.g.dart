// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'growth_stage_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GrowthStageReportImpl _$$GrowthStageReportImplFromJson(
  Map<String, dynamic> json,
) => _$GrowthStageReportImpl(
  stageId: json['stageId'] as String,
  stageName: json['stageName'] as String,
  ageStartDate: DateTime.parse(json['ageStartDate'] as String),
  ageEndDate: DateTime.parse(json['ageEndDate'] as String),
  weightAnimal: (json['weightAnimal'] as num).toDouble(),
  weightAnimalExpect: (json['weightAnimalExpect'] as num).toDouble(),
  quantity: (json['quantity'] as num?)?.toInt() ?? 0,
  deadQuantity: (json['deadQuantity'] as num?)?.toInt() ?? 0,
  vaccines:
      (json['vaccines'] as List<dynamic>?)
          ?.map((e) => VaccineDetail.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  foods:
      (json['foods'] as List<dynamic>?)
          ?.map((e) => FoodDetail.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  prescriptions:
      (json['prescriptions'] as List<dynamic>?)
          ?.map((e) => PrescriptionDetail.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$GrowthStageReportImplToJson(
  _$GrowthStageReportImpl instance,
) => <String, dynamic>{
  'stageId': instance.stageId,
  'stageName': instance.stageName,
  'ageStartDate': instance.ageStartDate.toIso8601String(),
  'ageEndDate': instance.ageEndDate.toIso8601String(),
  'weightAnimal': instance.weightAnimal,
  'weightAnimalExpect': instance.weightAnimalExpect,
  'quantity': instance.quantity,
  'deadQuantity': instance.deadQuantity,
  'vaccines': instance.vaccines,
  'foods': instance.foods,
  'prescriptions': instance.prescriptions,
};
