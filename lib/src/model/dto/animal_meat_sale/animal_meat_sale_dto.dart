import 'package:freezed_annotation/freezed_annotation.dart';

part 'animal_meat_sale_dto.freezed.dart';
part 'animal_meat_sale_dto.g.dart';

@freezed
class AnimalMeatSaleDto with _$AnimalMeatSaleDto {
  factory AnimalMeatSaleDto({
    required String id,
    required String farmingBatchId,
    required String saleDate,
    required int total,
    required int unitPrice,
    required int quantity,
    required String staffId,
    required String saleTypeId,
    required int weight,
    required String saleTypeName,
    required int expectTotalWeight,
  }) = _AnimalMeatSaleDto;

  factory AnimalMeatSaleDto.fromJson(Map<String, dynamic> json) =>
      _$AnimalMeatSaleDtoFromJson(json);
}
