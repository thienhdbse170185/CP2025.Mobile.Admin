// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merged_farming_batch_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MergedFarmingBatchDto _$MergedFarmingBatchDtoFromJson(
  Map<String, dynamic> json,
) {
  return _MergedFarmingBatchDto.fromJson(json);
}

/// @nodoc
mixin _$MergedFarmingBatchDto {
  String get farmingBatchName => throw _privateConstructorUsedError;
  String get dateStart => throw _privateConstructorUsedError;
  List<MergedFarmingBatchDetailsDto> get farmingBatchModels =>
      throw _privateConstructorUsedError;

  /// Serializes this MergedFarmingBatchDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MergedFarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MergedFarmingBatchDtoCopyWith<MergedFarmingBatchDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MergedFarmingBatchDtoCopyWith<$Res> {
  factory $MergedFarmingBatchDtoCopyWith(
    MergedFarmingBatchDto value,
    $Res Function(MergedFarmingBatchDto) then,
  ) = _$MergedFarmingBatchDtoCopyWithImpl<$Res, MergedFarmingBatchDto>;
  @useResult
  $Res call({
    String farmingBatchName,
    String dateStart,
    List<MergedFarmingBatchDetailsDto> farmingBatchModels,
  });
}

/// @nodoc
class _$MergedFarmingBatchDtoCopyWithImpl<
  $Res,
  $Val extends MergedFarmingBatchDto
>
    implements $MergedFarmingBatchDtoCopyWith<$Res> {
  _$MergedFarmingBatchDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MergedFarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farmingBatchName = null,
    Object? dateStart = null,
    Object? farmingBatchModels = null,
  }) {
    return _then(
      _value.copyWith(
            farmingBatchName:
                null == farmingBatchName
                    ? _value.farmingBatchName
                    : farmingBatchName // ignore: cast_nullable_to_non_nullable
                        as String,
            dateStart:
                null == dateStart
                    ? _value.dateStart
                    : dateStart // ignore: cast_nullable_to_non_nullable
                        as String,
            farmingBatchModels:
                null == farmingBatchModels
                    ? _value.farmingBatchModels
                    : farmingBatchModels // ignore: cast_nullable_to_non_nullable
                        as List<MergedFarmingBatchDetailsDto>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MergedFarmingBatchDtoImplCopyWith<$Res>
    implements $MergedFarmingBatchDtoCopyWith<$Res> {
  factory _$$MergedFarmingBatchDtoImplCopyWith(
    _$MergedFarmingBatchDtoImpl value,
    $Res Function(_$MergedFarmingBatchDtoImpl) then,
  ) = __$$MergedFarmingBatchDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String farmingBatchName,
    String dateStart,
    List<MergedFarmingBatchDetailsDto> farmingBatchModels,
  });
}

/// @nodoc
class __$$MergedFarmingBatchDtoImplCopyWithImpl<$Res>
    extends
        _$MergedFarmingBatchDtoCopyWithImpl<$Res, _$MergedFarmingBatchDtoImpl>
    implements _$$MergedFarmingBatchDtoImplCopyWith<$Res> {
  __$$MergedFarmingBatchDtoImplCopyWithImpl(
    _$MergedFarmingBatchDtoImpl _value,
    $Res Function(_$MergedFarmingBatchDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MergedFarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farmingBatchName = null,
    Object? dateStart = null,
    Object? farmingBatchModels = null,
  }) {
    return _then(
      _$MergedFarmingBatchDtoImpl(
        farmingBatchName:
            null == farmingBatchName
                ? _value.farmingBatchName
                : farmingBatchName // ignore: cast_nullable_to_non_nullable
                    as String,
        dateStart:
            null == dateStart
                ? _value.dateStart
                : dateStart // ignore: cast_nullable_to_non_nullable
                    as String,
        farmingBatchModels:
            null == farmingBatchModels
                ? _value._farmingBatchModels
                : farmingBatchModels // ignore: cast_nullable_to_non_nullable
                    as List<MergedFarmingBatchDetailsDto>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MergedFarmingBatchDtoImpl implements _MergedFarmingBatchDto {
  _$MergedFarmingBatchDtoImpl({
    required this.farmingBatchName,
    required this.dateStart,
    required final List<MergedFarmingBatchDetailsDto> farmingBatchModels,
  }) : _farmingBatchModels = farmingBatchModels;

  factory _$MergedFarmingBatchDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MergedFarmingBatchDtoImplFromJson(json);

  @override
  final String farmingBatchName;
  @override
  final String dateStart;
  final List<MergedFarmingBatchDetailsDto> _farmingBatchModels;
  @override
  List<MergedFarmingBatchDetailsDto> get farmingBatchModels {
    if (_farmingBatchModels is EqualUnmodifiableListView)
      return _farmingBatchModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_farmingBatchModels);
  }

  @override
  String toString() {
    return 'MergedFarmingBatchDto(farmingBatchName: $farmingBatchName, dateStart: $dateStart, farmingBatchModels: $farmingBatchModels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MergedFarmingBatchDtoImpl &&
            (identical(other.farmingBatchName, farmingBatchName) ||
                other.farmingBatchName == farmingBatchName) &&
            (identical(other.dateStart, dateStart) ||
                other.dateStart == dateStart) &&
            const DeepCollectionEquality().equals(
              other._farmingBatchModels,
              _farmingBatchModels,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    farmingBatchName,
    dateStart,
    const DeepCollectionEquality().hash(_farmingBatchModels),
  );

  /// Create a copy of MergedFarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MergedFarmingBatchDtoImplCopyWith<_$MergedFarmingBatchDtoImpl>
  get copyWith =>
      __$$MergedFarmingBatchDtoImplCopyWithImpl<_$MergedFarmingBatchDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MergedFarmingBatchDtoImplToJson(this);
  }
}

abstract class _MergedFarmingBatchDto implements MergedFarmingBatchDto {
  factory _MergedFarmingBatchDto({
    required final String farmingBatchName,
    required final String dateStart,
    required final List<MergedFarmingBatchDetailsDto> farmingBatchModels,
  }) = _$MergedFarmingBatchDtoImpl;

  factory _MergedFarmingBatchDto.fromJson(Map<String, dynamic> json) =
      _$MergedFarmingBatchDtoImpl.fromJson;

  @override
  String get farmingBatchName;
  @override
  String get dateStart;
  @override
  List<MergedFarmingBatchDetailsDto> get farmingBatchModels;

  /// Create a copy of MergedFarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MergedFarmingBatchDtoImplCopyWith<_$MergedFarmingBatchDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}
