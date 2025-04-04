import 'package:data_layer/model/dto/growth_stage/growth_stage_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_farm_admin/src/model/dto/animal_template/animal_template_dto.dart';
import 'package:smart_farm_admin/src/model/dto/cage/cage_dto.dart';

part 'farming_batch_dto.freezed.dart';
part 'farming_batch_dto.g.dart';

@freezed
class FarmingBatchDto with _$FarmingBatchDto {
  factory FarmingBatchDto({
    required String id,
    required String farmingbatchCode,
    required String name,
    String? species,
    required String startDate,
    String? completeAt,
    required String estimatedTimeStart,
    required String endDate,
    required String status,
    required int cleaningFrequency,
    required int quantity,
    int? deadQuantity,
    GrowthStageDto? growthStageDetails,
    CageDto? cage,
    AnimalTemplateDto? animalTemplate,
  }) = _FarmingBatchDto;

  factory FarmingBatchDto.fromJson(Map<String, dynamic> json) =>
      _$FarmingBatchDtoFromJson(json);
}
