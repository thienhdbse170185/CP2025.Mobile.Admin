import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_farm_admin/src/model/dto/animal_template/animal_template_dto.dart';
import 'package:smart_farm_admin/src/model/dto/cage/cage_dto.dart';
import 'package:smart_farm_admin/src/model/dto/farming_batch/growth_stage_detail/growth_stage_detail.dart';
import 'package:smart_farm_admin/src/model/dto/farming_batch/medical_symptom_detail/medical_symptom_detail.dart';

part 'farming_batch_dto.freezed.dart';
part 'farming_batch_dto.g.dart';

@freezed
class FarmingBatchDto with _$FarmingBatchDto {
  factory FarmingBatchDto({
    required String id,
    String? farmingBatchCode,
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
    String? farmId,
    String? cageId,
    String? cageName,
    List<GrowthStageDetail>? growthStages,
    List<MedicalSymptomDetail>? medicalSymptoms,
    CageDto? cage,
    AnimalTemplateDto? animalTemplate,
    String? templateName,
  }) = _FarmingBatchDto;

  factory FarmingBatchDto.fromJson(Map<String, dynamic> json) =>
      _$FarmingBatchDtoFromJson(json);
}
