import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_farm_admin/src/model/dto/animal_meat_sale/animal_meat_sale_dto.dart';
import 'package:smart_farm_admin/src/model/dto/dead_poultry_log/dead_poultry_log_dto.dart';
import 'package:smart_farm_admin/src/model/dto/report_farming_batch/food_usage_detail/food_usage_detail.dart';
import 'package:smart_farm_admin/src/model/dto/report_farming_batch/growth_stage_report/growth_stage_report.dart';
import 'package:smart_farm_admin/src/model/dto/report_farming_batch/prescription_detail/prescription_detail.dart';
import 'package:smart_farm_admin/src/model/dto/report_farming_batch/vaccine_detail/vaccine_detail.dart';

part 'report_farming_batch_dto.freezed.dart';
part 'report_farming_batch_dto.g.dart';

@freezed
class ReportFarmingBatchDto with _$ReportFarmingBatchDto {
  factory ReportFarmingBatchDto({
    required String farmingBatchId,
    required String farmingBatchName,
    required String cageName,
    required DateTime startDate,
    DateTime? endDate,
    @Default(0) int totalEggSales,
    @Default(0) int totalMeatSales,
    @Default(0) int totalFoodCost,
    @Default(0) int totalVaccineCost,
    @Default(0) int totalMedicineCost,
    @Default(0) int totalEggsCollected,
    @Default(0) int netProfit,
    @Default(0) int quantityAnimal,
    @Default(0) int deadQuantity,
    @Default([]) List<GrowthStageReport> growthStageReports,
    @Default([]) List<VaccineDetail> vaccineDetails,
    @Default([]) List<PrescriptionDetail> prescriptionDetails,
    @Default([]) List<FoodUsageDetail> foodUsageDetails,
    @Default([]) List<AnimalMeatSaleDto> animalMeatSales,
    @Default([]) List<DeadPoultryLogDto> deadPoultryLogs,
  }) = _ReportFarmingBatchDto;

  factory ReportFarmingBatchDto.fromJson(Map<String, dynamic> json) =>
      _$ReportFarmingBatchDtoFromJson(json);
}
