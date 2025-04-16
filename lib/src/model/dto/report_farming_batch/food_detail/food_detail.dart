import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_detail.freezed.dart';
part 'food_detail.g.dart';

@freezed
class FoodDetail with _$FoodDetail {
  factory FoodDetail({
    required String foodType,
    required double totalWeightUsed,
  }) = _FoodDetail;

  factory FoodDetail.fromJson(Map<String, dynamic> json) =>
      _$FoodDetailFromJson(json);
}
