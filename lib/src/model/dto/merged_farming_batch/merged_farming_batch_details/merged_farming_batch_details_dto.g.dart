// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merged_farming_batch_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MergedFarmingBatchDetailsDtoImpl _$$MergedFarmingBatchDetailsDtoImplFromJson(
  Map<String, dynamic> json,
) => _$MergedFarmingBatchDetailsDtoImpl(
  id: json['id'] as String,
  farmingbatchCode: json['farmingbatchCode'] as String,
  name: json['name'] as String,
  species: json['species'] as String,
  startDate: json['startDate'] as String,
  completeAt: json['completeAt'] as String?,
  estimatedTimeStart: json['estimatedTimeStart'] as String,
  endDate: json['endDate'] as String?,
  status: json['status'] as String,
  cleaningFrequency: (json['cleaningFrequency'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
  deadQuantity: (json['deadQuantity'] as num).toInt(),
  growthStageDetails:
      json['growthStageDetails'] == null
          ? null
          : GrowthStageDetail.fromJson(
            json['growthStageDetails'] as Map<String, dynamic>,
          ),
  cage: CageDto.fromJson(json['cage'] as Map<String, dynamic>),
  template: AnimalTemplateDto.fromJson(
    json['template'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$MergedFarmingBatchDetailsDtoImplToJson(
  _$MergedFarmingBatchDetailsDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'farmingbatchCode': instance.farmingbatchCode,
  'name': instance.name,
  'species': instance.species,
  'startDate': instance.startDate,
  'completeAt': instance.completeAt,
  'estimatedTimeStart': instance.estimatedTimeStart,
  'endDate': instance.endDate,
  'status': instance.status,
  'cleaningFrequency': instance.cleaningFrequency,
  'quantity': instance.quantity,
  'deadQuantity': instance.deadQuantity,
  'growthStageDetails': instance.growthStageDetails,
  'cage': instance.cage,
  'template': instance.template,
};
