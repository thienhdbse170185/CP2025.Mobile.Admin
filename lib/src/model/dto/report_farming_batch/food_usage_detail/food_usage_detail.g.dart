// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_usage_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoodUsageDetailImpl _$$FoodUsageDetailImplFromJson(
  Map<String, dynamic> json,
) => _$FoodUsageDetailImpl(
  foodType: json['foodType'] as String,
  totalWeightUsed: (json['totalWeightUsed'] as num).toDouble(),
);

Map<String, dynamic> _$$FoodUsageDetailImplToJson(
  _$FoodUsageDetailImpl instance,
) => <String, dynamic>{
  'foodType': instance.foodType,
  'totalWeightUsed': instance.totalWeightUsed,
};
