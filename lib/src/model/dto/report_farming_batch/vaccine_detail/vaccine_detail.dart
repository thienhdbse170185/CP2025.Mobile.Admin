import 'package:freezed_annotation/freezed_annotation.dart';

part 'vaccine_detail.freezed.dart';
part 'vaccine_detail.g.dart';

@freezed
class VaccineDetail with _$VaccineDetail {
  factory VaccineDetail({
    required String vaccineName,
    required int quantity,
    required int totalPrice,
    required DateTime dateAdministered,
  }) = _VaccineDetail;

  factory VaccineDetail.fromJson(Map<String, dynamic> json) =>
      _$VaccineDetailFromJson(json);
}
