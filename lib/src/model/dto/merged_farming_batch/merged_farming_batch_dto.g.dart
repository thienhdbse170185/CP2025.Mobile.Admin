// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merged_farming_batch_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MergedFarmingBatchDtoImpl _$$MergedFarmingBatchDtoImplFromJson(
  Map<String, dynamic> json,
) => _$MergedFarmingBatchDtoImpl(
  farmingBatchName: json['farmingBatchName'] as String,
  dateStart: json['dateStart'] as String,
  farmingBatchModels:
      (json['farmingBatchModels'] as List<dynamic>)
          .map(
            (e) => MergedFarmingBatchDetailsDto.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
);

Map<String, dynamic> _$$MergedFarmingBatchDtoImplToJson(
  _$MergedFarmingBatchDtoImpl instance,
) => <String, dynamic>{
  'farmingBatchName': instance.farmingBatchName,
  'dateStart': instance.dateStart,
  'farmingBatchModels': instance.farmingBatchModels,
};
