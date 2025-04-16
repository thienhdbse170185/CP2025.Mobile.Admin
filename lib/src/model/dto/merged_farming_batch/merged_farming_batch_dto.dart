import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_farm_admin/src/model/dto/merged_farming_batch/merged_farming_batch_details/merged_farming_batch_details_dto.dart';

part 'merged_farming_batch_dto.freezed.dart';
part 'merged_farming_batch_dto.g.dart';

@freezed
class MergedFarmingBatchDto with _$MergedFarmingBatchDto {
  factory MergedFarmingBatchDto({
    required String farmingBatchName,
    required String dateStart,
    required List<MergedFarmingBatchDetailsDto> farmingBatchModels,
  }) = _MergedFarmingBatchDto;

  factory MergedFarmingBatchDto.fromJson(Map<String, dynamic> json) =>
      _$MergedFarmingBatchDtoFromJson(json);
}
