// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VaccineDetailImpl _$$VaccineDetailImplFromJson(Map<String, dynamic> json) =>
    _$VaccineDetailImpl(
      vaccineName: json['vaccineName'] as String,
      quantity: (json['quantity'] as num).toInt(),
      totalPrice: (json['totalPrice'] as num).toInt(),
      dateAdministered: DateTime.parse(json['dateAdministered'] as String),
    );

Map<String, dynamic> _$$VaccineDetailImplToJson(_$VaccineDetailImpl instance) =>
    <String, dynamic>{
      'vaccineName': instance.vaccineName,
      'quantity': instance.quantity,
      'totalPrice': instance.totalPrice,
      'dateAdministered': instance.dateAdministered.toIso8601String(),
    };
