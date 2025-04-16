import 'package:freezed_annotation/freezed_annotation.dart';

part 'animal_template_dto.freezed.dart';
part 'animal_template_dto.g.dart';

@freezed
class AnimalTemplateDto with _$AnimalTemplateDto {
  factory AnimalTemplateDto({
    required String id,
    required String name,
    required String species,
    String? status,
    String? notes,
  }) = _AnimalTemplateDto;

  factory AnimalTemplateDto.fromJson(Map<String, dynamic> json) =>
      _$AnimalTemplateDtoFromJson(json);
}
