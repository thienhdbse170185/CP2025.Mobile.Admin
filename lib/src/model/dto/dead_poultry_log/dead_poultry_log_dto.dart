import 'package:freezed_annotation/freezed_annotation.dart';

part 'dead_poultry_log_dto.freezed.dart';
part 'dead_poultry_log_dto.g.dart';

@freezed
class DeadPoultryLogDto with _$DeadPoultryLogDto {
  factory DeadPoultryLogDto({
    required String farmingBatchId,
    required String date,
    required int quantity,
    required String note,
  }) = _DeadPoultryLogDto;

  factory DeadPoultryLogDto.fromJson(Map<String, dynamic> json) =>
      _$DeadPoultryLogDtoFromJson(json);
}
