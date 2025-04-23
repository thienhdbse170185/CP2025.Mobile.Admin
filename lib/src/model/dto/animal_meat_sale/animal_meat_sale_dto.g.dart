// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_meat_sale_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimalMeatSaleDtoImpl _$$AnimalMeatSaleDtoImplFromJson(
  Map<String, dynamic> json,
) => _$AnimalMeatSaleDtoImpl(
  id: json['id'] as String,
  farmingBatchId: json['farmingBatchId'] as String,
  saleDate: json['saleDate'] as String,
  total: (json['total'] as num).toInt(),
  unitPrice: (json['unitPrice'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
  staffId: json['staffId'] as String,
  saleTypeId: json['saleTypeId'] as String,
  weight: (json['weight'] as num).toInt(),
  saleTypeName: json['saleTypeName'] as String,
  expectTotalWeight: (json['expectTotalWeight'] as num).toInt(),
);

Map<String, dynamic> _$$AnimalMeatSaleDtoImplToJson(
  _$AnimalMeatSaleDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'farmingBatchId': instance.farmingBatchId,
  'saleDate': instance.saleDate,
  'total': instance.total,
  'unitPrice': instance.unitPrice,
  'quantity': instance.quantity,
  'staffId': instance.staffId,
  'saleTypeId': instance.saleTypeId,
  'weight': instance.weight,
  'saleTypeName': instance.saleTypeName,
  'expectTotalWeight': instance.expectTotalWeight,
};
