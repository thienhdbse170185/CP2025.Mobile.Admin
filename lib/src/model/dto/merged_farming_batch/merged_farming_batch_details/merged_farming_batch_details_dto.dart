import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_farm_admin/src/model/dto/animal_template/animal_template_dto.dart';
import 'package:smart_farm_admin/src/model/dto/cage/cage_dto.dart';
import 'package:smart_farm_admin/src/model/dto/farming_batch/growth_stage_detail/growth_stage_detail.dart';

part 'merged_farming_batch_details_dto.freezed.dart';
part 'merged_farming_batch_details_dto.g.dart';

@freezed
class MergedFarmingBatchDetailsDto with _$MergedFarmingBatchDetailsDto {
  factory MergedFarmingBatchDetailsDto({
    required String id,
    required String farmingbatchCode,
    required String name,
    required String species,
    required String startDate,
    String? completeAt,
    required String estimatedTimeStart,
    String? endDate,
    required String status,
    required int cleaningFrequency,
    required int quantity,
    required int deadQuantity,
    required GrowthStageDetail growthStageDetails,
    required CageDto cage,
    required AnimalTemplateDto template,
  }) = _MergedFarmingBatchDetailsDto;

  factory MergedFarmingBatchDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$MergedFarmingBatchDetailsDtoFromJson(json);
}
