import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_farm_admin/src/model/dto/report_farming_batch/food_detail/food_detail.dart';
import 'package:smart_farm_admin/src/model/dto/report_farming_batch/prescription_detail/prescription_detail.dart';
import 'package:smart_farm_admin/src/model/dto/report_farming_batch/vaccine_detail/vaccine_detail.dart';

part 'growth_stage_report.freezed.dart';
part 'growth_stage_report.g.dart';

@freezed
class GrowthStageReport with _$GrowthStageReport {
  factory GrowthStageReport({
    required String stageId,
    required String stageName,
    required DateTime ageStartDate,
    required DateTime ageEndDate,
    required double weightAnimal,
    required double weightAnimalExpect,
    @Default(0) int quantity,
    @Default(0) int deadQuantity,
    @Default([]) List<VaccineDetail> vaccines,
    @Default([]) List<FoodDetail> foods,
    @Default([]) List<PrescriptionDetail> prescriptions,
  }) = _GrowthStageReport;

  factory GrowthStageReport.fromJson(Map<String, dynamic> json) =>
      _$GrowthStageReportFromJson(json);
}
