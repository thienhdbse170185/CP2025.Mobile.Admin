// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dead_poultry_log_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeadPoultryLogDtoImpl _$$DeadPoultryLogDtoImplFromJson(
  Map<String, dynamic> json,
) => _$DeadPoultryLogDtoImpl(
  farmingBatchId: json['farmingBatchId'] as String,
  date: json['date'] as String,
  quantity: (json['quantity'] as num).toInt(),
  note: json['note'] as String,
);

Map<String, dynamic> _$$DeadPoultryLogDtoImplToJson(
  _$DeadPoultryLogDtoImpl instance,
) => <String, dynamic>{
  'farmingBatchId': instance.farmingBatchId,
  'date': instance.date,
  'quantity': instance.quantity,
  'note': instance.note,
};
