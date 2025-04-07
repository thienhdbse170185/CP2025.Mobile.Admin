// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'growth_stage_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GrowthStageDetail _$GrowthStageDetailFromJson(Map<String, dynamic> json) {
  return _GrowthStageDetail.fromJson(json);
}

/// @nodoc
mixin _$GrowthStageDetail {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get ageStartDate => throw _privateConstructorUsedError;
  String get ageEndDate => throw _privateConstructorUsedError;

  /// Serializes this GrowthStageDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GrowthStageDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GrowthStageDetailCopyWith<GrowthStageDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrowthStageDetailCopyWith<$Res> {
  factory $GrowthStageDetailCopyWith(
    GrowthStageDetail value,
    $Res Function(GrowthStageDetail) then,
  ) = _$GrowthStageDetailCopyWithImpl<$Res, GrowthStageDetail>;
  @useResult
  $Res call({String id, String name, String ageStartDate, String ageEndDate});
}

/// @nodoc
class _$GrowthStageDetailCopyWithImpl<$Res, $Val extends GrowthStageDetail>
    implements $GrowthStageDetailCopyWith<$Res> {
  _$GrowthStageDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GrowthStageDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ageStartDate = null,
    Object? ageEndDate = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            ageStartDate:
                null == ageStartDate
                    ? _value.ageStartDate
                    : ageStartDate // ignore: cast_nullable_to_non_nullable
                        as String,
            ageEndDate:
                null == ageEndDate
                    ? _value.ageEndDate
                    : ageEndDate // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GrowthStageDetailImplCopyWith<$Res>
    implements $GrowthStageDetailCopyWith<$Res> {
  factory _$$GrowthStageDetailImplCopyWith(
    _$GrowthStageDetailImpl value,
    $Res Function(_$GrowthStageDetailImpl) then,
  ) = __$$GrowthStageDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String ageStartDate, String ageEndDate});
}

/// @nodoc
class __$$GrowthStageDetailImplCopyWithImpl<$Res>
    extends _$GrowthStageDetailCopyWithImpl<$Res, _$GrowthStageDetailImpl>
    implements _$$GrowthStageDetailImplCopyWith<$Res> {
  __$$GrowthStageDetailImplCopyWithImpl(
    _$GrowthStageDetailImpl _value,
    $Res Function(_$GrowthStageDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GrowthStageDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ageStartDate = null,
    Object? ageEndDate = null,
  }) {
    return _then(
      _$GrowthStageDetailImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        ageStartDate:
            null == ageStartDate
                ? _value.ageStartDate
                : ageStartDate // ignore: cast_nullable_to_non_nullable
                    as String,
        ageEndDate:
            null == ageEndDate
                ? _value.ageEndDate
                : ageEndDate // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GrowthStageDetailImpl implements _GrowthStageDetail {
  _$GrowthStageDetailImpl({
    required this.id,
    required this.name,
    required this.ageStartDate,
    required this.ageEndDate,
  });

  factory _$GrowthStageDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$GrowthStageDetailImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String ageStartDate;
  @override
  final String ageEndDate;

  @override
  String toString() {
    return 'GrowthStageDetail(id: $id, name: $name, ageStartDate: $ageStartDate, ageEndDate: $ageEndDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrowthStageDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ageStartDate, ageStartDate) ||
                other.ageStartDate == ageStartDate) &&
            (identical(other.ageEndDate, ageEndDate) ||
                other.ageEndDate == ageEndDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, ageStartDate, ageEndDate);

  /// Create a copy of GrowthStageDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GrowthStageDetailImplCopyWith<_$GrowthStageDetailImpl> get copyWith =>
      __$$GrowthStageDetailImplCopyWithImpl<_$GrowthStageDetailImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GrowthStageDetailImplToJson(this);
  }
}

abstract class _GrowthStageDetail implements GrowthStageDetail {
  factory _GrowthStageDetail({
    required final String id,
    required final String name,
    required final String ageStartDate,
    required final String ageEndDate,
  }) = _$GrowthStageDetailImpl;

  factory _GrowthStageDetail.fromJson(Map<String, dynamic> json) =
      _$GrowthStageDetailImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get ageStartDate;
  @override
  String get ageEndDate;

  /// Create a copy of GrowthStageDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GrowthStageDetailImplCopyWith<_$GrowthStageDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
