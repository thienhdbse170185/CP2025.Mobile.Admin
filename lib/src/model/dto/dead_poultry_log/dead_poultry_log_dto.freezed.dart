// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dead_poultry_log_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DeadPoultryLogDto _$DeadPoultryLogDtoFromJson(Map<String, dynamic> json) {
  return _DeadPoultryLogDto.fromJson(json);
}

/// @nodoc
mixin _$DeadPoultryLogDto {
  String get farmingBatchId => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;

  /// Serializes this DeadPoultryLogDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeadPoultryLogDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeadPoultryLogDtoCopyWith<DeadPoultryLogDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeadPoultryLogDtoCopyWith<$Res> {
  factory $DeadPoultryLogDtoCopyWith(
    DeadPoultryLogDto value,
    $Res Function(DeadPoultryLogDto) then,
  ) = _$DeadPoultryLogDtoCopyWithImpl<$Res, DeadPoultryLogDto>;
  @useResult
  $Res call({String farmingBatchId, String date, int quantity, String note});
}

/// @nodoc
class _$DeadPoultryLogDtoCopyWithImpl<$Res, $Val extends DeadPoultryLogDto>
    implements $DeadPoultryLogDtoCopyWith<$Res> {
  _$DeadPoultryLogDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeadPoultryLogDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farmingBatchId = null,
    Object? date = null,
    Object? quantity = null,
    Object? note = null,
  }) {
    return _then(
      _value.copyWith(
            farmingBatchId:
                null == farmingBatchId
                    ? _value.farmingBatchId
                    : farmingBatchId // ignore: cast_nullable_to_non_nullable
                        as String,
            date:
                null == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as String,
            quantity:
                null == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as int,
            note:
                null == note
                    ? _value.note
                    : note // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeadPoultryLogDtoImplCopyWith<$Res>
    implements $DeadPoultryLogDtoCopyWith<$Res> {
  factory _$$DeadPoultryLogDtoImplCopyWith(
    _$DeadPoultryLogDtoImpl value,
    $Res Function(_$DeadPoultryLogDtoImpl) then,
  ) = __$$DeadPoultryLogDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String farmingBatchId, String date, int quantity, String note});
}

/// @nodoc
class __$$DeadPoultryLogDtoImplCopyWithImpl<$Res>
    extends _$DeadPoultryLogDtoCopyWithImpl<$Res, _$DeadPoultryLogDtoImpl>
    implements _$$DeadPoultryLogDtoImplCopyWith<$Res> {
  __$$DeadPoultryLogDtoImplCopyWithImpl(
    _$DeadPoultryLogDtoImpl _value,
    $Res Function(_$DeadPoultryLogDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeadPoultryLogDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farmingBatchId = null,
    Object? date = null,
    Object? quantity = null,
    Object? note = null,
  }) {
    return _then(
      _$DeadPoultryLogDtoImpl(
        farmingBatchId:
            null == farmingBatchId
                ? _value.farmingBatchId
                : farmingBatchId // ignore: cast_nullable_to_non_nullable
                    as String,
        date:
            null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as String,
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as int,
        note:
            null == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeadPoultryLogDtoImpl implements _DeadPoultryLogDto {
  _$DeadPoultryLogDtoImpl({
    required this.farmingBatchId,
    required this.date,
    required this.quantity,
    required this.note,
  });

  factory _$DeadPoultryLogDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeadPoultryLogDtoImplFromJson(json);

  @override
  final String farmingBatchId;
  @override
  final String date;
  @override
  final int quantity;
  @override
  final String note;

  @override
  String toString() {
    return 'DeadPoultryLogDto(farmingBatchId: $farmingBatchId, date: $date, quantity: $quantity, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeadPoultryLogDtoImpl &&
            (identical(other.farmingBatchId, farmingBatchId) ||
                other.farmingBatchId == farmingBatchId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, farmingBatchId, date, quantity, note);

  /// Create a copy of DeadPoultryLogDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeadPoultryLogDtoImplCopyWith<_$DeadPoultryLogDtoImpl> get copyWith =>
      __$$DeadPoultryLogDtoImplCopyWithImpl<_$DeadPoultryLogDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeadPoultryLogDtoImplToJson(this);
  }
}

abstract class _DeadPoultryLogDto implements DeadPoultryLogDto {
  factory _DeadPoultryLogDto({
    required final String farmingBatchId,
    required final String date,
    required final int quantity,
    required final String note,
  }) = _$DeadPoultryLogDtoImpl;

  factory _DeadPoultryLogDto.fromJson(Map<String, dynamic> json) =
      _$DeadPoultryLogDtoImpl.fromJson;

  @override
  String get farmingBatchId;
  @override
  String get date;
  @override
  int get quantity;
  @override
  String get note;

  /// Create a copy of DeadPoultryLogDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeadPoultryLogDtoImplCopyWith<_$DeadPoultryLogDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
