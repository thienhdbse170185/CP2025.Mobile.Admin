import 'package:freezed_annotation/freezed_annotation.dart';

part 'growth_stage_detail.freezed.dart';
part 'growth_stage_detail.g.dart';

@freezed
class GrowthStageDetail with _$GrowthStageDetail {
  factory GrowthStageDetail({
    required String id,
    required String name,
    required String ageStartDate,
    required String ageEndDate,
  }) = _GrowthStageDetail;

  factory GrowthStageDetail.fromJson(Map<String, dynamic> json) =>
      _$GrowthStageDetailFromJson(json);
}
