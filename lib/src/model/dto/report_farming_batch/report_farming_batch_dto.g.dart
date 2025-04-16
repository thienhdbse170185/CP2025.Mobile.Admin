// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_farming_batch_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportFarmingBatchDtoImpl _$$ReportFarmingBatchDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ReportFarmingBatchDtoImpl(
  farmingBatchId: json['farmingBatchId'] as String,
  farmingBatchName: json['farmingBatchName'] as String,
  cageName: json['cageName'] as String,
  startDate: DateTime.parse(json['startDate'] as String),
  endDate:
      json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
  totalEggSales: (json['totalEggSales'] as num?)?.toInt() ?? 0,
  totalMeatSales: (json['totalMeatSales'] as num?)?.toInt() ?? 0,
  totalFoodCost: (json['totalFoodCost'] as num?)?.toInt() ?? 0,
  totalVaccineCost: (json['totalVaccineCost'] as num?)?.toInt() ?? 0,
  totalMedicineCost: (json['totalMedicineCost'] as num?)?.toInt() ?? 0,
  totalEggsCollected: (json['totalEggsCollected'] as num?)?.toInt() ?? 0,
  netProfit: (json['netProfit'] as num?)?.toInt() ?? 0,
  quantityAnimal: (json['quantityAnimal'] as num?)?.toInt() ?? 0,
  deadQuantity: (json['deadQuantity'] as num?)?.toInt() ?? 0,
  growthStageReports:
      (json['growthStageReports'] as List<dynamic>?)
          ?.map((e) => GrowthStageReport.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  vaccineDetails:
      (json['vaccineDetails'] as List<dynamic>?)
          ?.map((e) => VaccineDetail.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  prescriptionDetails:
      (json['prescriptionDetails'] as List<dynamic>?)
          ?.map((e) => PrescriptionDetail.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  foodUsageDetails:
      (json['foodUsageDetails'] as List<dynamic>?)
          ?.map((e) => FoodUsageDetail.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$ReportFarmingBatchDtoImplToJson(
  _$ReportFarmingBatchDtoImpl instance,
) => <String, dynamic>{
  'farmingBatchId': instance.farmingBatchId,
  'farmingBatchName': instance.farmingBatchName,
  'cageName': instance.cageName,
  'startDate': instance.startDate.toIso8601String(),
  'endDate': instance.endDate?.toIso8601String(),
  'totalEggSales': instance.totalEggSales,
  'totalMeatSales': instance.totalMeatSales,
  'totalFoodCost': instance.totalFoodCost,
  'totalVaccineCost': instance.totalVaccineCost,
  'totalMedicineCost': instance.totalMedicineCost,
  'totalEggsCollected': instance.totalEggsCollected,
  'netProfit': instance.netProfit,
  'quantityAnimal': instance.quantityAnimal,
  'deadQuantity': instance.deadQuantity,
  'growthStageReports': instance.growthStageReports,
  'vaccineDetails': instance.vaccineDetails,
  'prescriptionDetails': instance.prescriptionDetails,
  'foodUsageDetails': instance.foodUsageDetails,
};
