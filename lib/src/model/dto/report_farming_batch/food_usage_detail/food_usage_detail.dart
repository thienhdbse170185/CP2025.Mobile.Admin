import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_usage_detail.freezed.dart';
part 'food_usage_detail.g.dart';

@freezed
class FoodUsageDetail with _$FoodUsageDetail {
  factory FoodUsageDetail({
    required String foodType,
    required double totalWeightUsed,
  }) = _FoodUsageDetail;

  factory FoodUsageDetail.fromJson(Map<String, dynamic> json) =>
      _$FoodUsageDetailFromJson(json);
}
