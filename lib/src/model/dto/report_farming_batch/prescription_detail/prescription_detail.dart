import 'package:freezed_annotation/freezed_annotation.dart';

part 'prescription_detail.freezed.dart';
part 'prescription_detail.g.dart';

@freezed
class PrescriptionDetail with _$PrescriptionDetail {
  factory PrescriptionDetail({
    required String prescriptionId,
    String? diagnosis,
    @Default(0) int affectedQuantity,
    @Default(0) int prescriptionPrice,
    @Default("Unknown") String diseaseName,
    @Default("N/A") String diseaseDescription,
    @Default([]) List<String> symptoms,
  }) = _PrescriptionDetail;

  factory PrescriptionDetail.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionDetailFromJson(json);
}
