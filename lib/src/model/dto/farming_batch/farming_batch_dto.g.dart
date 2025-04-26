// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farming_batch_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FarmingBatchDtoImpl _$$FarmingBatchDtoImplFromJson(
  Map<String, dynamic> json,
) => _$FarmingBatchDtoImpl(
  id: json['id'] as String,
  farmingBatchCode: json['farmingBatchCode'] as String?,
  name: json['name'] as String,
  species: json['species'] as String?,
  startDate: json['startDate'] as String,
  completeAt: json['completeAt'] as String?,
  estimatedTimeStart: json['estimatedTimeStart'] as String,
  endDate: json['endDate'] as String,
  status: json['status'] as String,
  cleaningFrequency: (json['cleaningFrequency'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
  affectQuantity: (json['affectQuantity'] as num?)?.toInt(),
  currentQuantity: (json['currentQuantity'] as num?)?.toInt(),
  deadQuantity: (json['deadQuantity'] as num?)?.toInt(),
  farmId: json['farmId'] as String?,
  cageId: json['cageId'] as String?,
  cageName: json['cageName'] as String?,
  growthStages:
      (json['growthStages'] as List<dynamic>?)
          ?.map((e) => GrowthStageDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
  medicalSymptoms:
      (json['medicalSymptoms'] as List<dynamic>?)
          ?.map((e) => MedicalSymptomDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
  cage:
      json['cage'] == null
          ? null
          : CageDto.fromJson(json['cage'] as Map<String, dynamic>),
  animalTemplate:
      json['animalTemplate'] == null
          ? null
          : AnimalTemplateDto.fromJson(
            json['animalTemplate'] as Map<String, dynamic>,
          ),
  templateName: json['templateName'] as String?,
);

Map<String, dynamic> _$$FarmingBatchDtoImplToJson(
  _$FarmingBatchDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'farmingBatchCode': instance.farmingBatchCode,
  'name': instance.name,
  'species': instance.species,
  'startDate': instance.startDate,
  'completeAt': instance.completeAt,
  'estimatedTimeStart': instance.estimatedTimeStart,
  'endDate': instance.endDate,
  'status': instance.status,
  'cleaningFrequency': instance.cleaningFrequency,
  'quantity': instance.quantity,
  'affectQuantity': instance.affectQuantity,
  'currentQuantity': instance.currentQuantity,
  'deadQuantity': instance.deadQuantity,
  'farmId': instance.farmId,
  'cageId': instance.cageId,
  'cageName': instance.cageName,
  'growthStages': instance.growthStages,
  'medicalSymptoms': instance.medicalSymptoms,
  'cage': instance.cage,
  'animalTemplate': instance.animalTemplate,
  'templateName': instance.templateName,
};
