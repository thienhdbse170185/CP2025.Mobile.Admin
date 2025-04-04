// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cage_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CageDtoImpl _$$CageDtoImplFromJson(Map<String, dynamic> json) =>
    _$CageDtoImpl(
      id: json['id'] as String,
      farmId: json['farmId'] as String,
      name: json['name'] as String,
      area: (json['area'] as num).toInt(),
      capacity: (json['capacity'] as num).toInt(),
      location: json['location'] as String,
    );

Map<String, dynamic> _$$CageDtoImplToJson(_$CageDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'farmId': instance.farmId,
      'name': instance.name,
      'area': instance.area,
      'capacity': instance.capacity,
      'location': instance.location,
    };
