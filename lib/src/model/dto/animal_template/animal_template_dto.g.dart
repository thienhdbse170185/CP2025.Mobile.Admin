// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_template_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimalTemplateDtoImpl _$$AnimalTemplateDtoImplFromJson(
  Map<String, dynamic> json,
) => _$AnimalTemplateDtoImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  species: json['species'] as String,
  status: json['status'] as String?,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$$AnimalTemplateDtoImplToJson(
  _$AnimalTemplateDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'species': instance.species,
  'status': instance.status,
  'notes': instance.notes,
};
