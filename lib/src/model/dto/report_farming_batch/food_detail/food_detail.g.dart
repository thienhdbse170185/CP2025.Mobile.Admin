// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoodDetailImpl _$$FoodDetailImplFromJson(Map<String, dynamic> json) =>
    _$FoodDetailImpl(
      foodType: json['foodType'] as String,
      totalWeightUsed: (json['totalWeightUsed'] as num).toDouble(),
    );

Map<String, dynamic> _$$FoodDetailImplToJson(_$FoodDetailImpl instance) =>
    <String, dynamic>{
      'foodType': instance.foodType,
      'totalWeightUsed': instance.totalWeightUsed,
    };
