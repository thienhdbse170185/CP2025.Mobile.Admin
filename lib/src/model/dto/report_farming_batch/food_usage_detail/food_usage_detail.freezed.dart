// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_usage_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FoodUsageDetail _$FoodUsageDetailFromJson(Map<String, dynamic> json) {
  return _FoodUsageDetail.fromJson(json);
}

/// @nodoc
mixin _$FoodUsageDetail {
  String get foodType => throw _privateConstructorUsedError;
  double get totalWeightUsed => throw _privateConstructorUsedError;

  /// Serializes this FoodUsageDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FoodUsageDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodUsageDetailCopyWith<FoodUsageDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodUsageDetailCopyWith<$Res> {
  factory $FoodUsageDetailCopyWith(
    FoodUsageDetail value,
    $Res Function(FoodUsageDetail) then,
  ) = _$FoodUsageDetailCopyWithImpl<$Res, FoodUsageDetail>;
  @useResult
  $Res call({String foodType, double totalWeightUsed});
}

/// @nodoc
class _$FoodUsageDetailCopyWithImpl<$Res, $Val extends FoodUsageDetail>
    implements $FoodUsageDetailCopyWith<$Res> {
  _$FoodUsageDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodUsageDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? foodType = null, Object? totalWeightUsed = null}) {
    return _then(
      _value.copyWith(
            foodType:
                null == foodType
                    ? _value.foodType
                    : foodType // ignore: cast_nullable_to_non_nullable
                        as String,
            totalWeightUsed:
                null == totalWeightUsed
                    ? _value.totalWeightUsed
                    : totalWeightUsed // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FoodUsageDetailImplCopyWith<$Res>
    implements $FoodUsageDetailCopyWith<$Res> {
  factory _$$FoodUsageDetailImplCopyWith(
    _$FoodUsageDetailImpl value,
    $Res Function(_$FoodUsageDetailImpl) then,
  ) = __$$FoodUsageDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String foodType, double totalWeightUsed});
}

/// @nodoc
class __$$FoodUsageDetailImplCopyWithImpl<$Res>
    extends _$FoodUsageDetailCopyWithImpl<$Res, _$FoodUsageDetailImpl>
    implements _$$FoodUsageDetailImplCopyWith<$Res> {
  __$$FoodUsageDetailImplCopyWithImpl(
    _$FoodUsageDetailImpl _value,
    $Res Function(_$FoodUsageDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FoodUsageDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? foodType = null, Object? totalWeightUsed = null}) {
    return _then(
      _$FoodUsageDetailImpl(
        foodType:
            null == foodType
                ? _value.foodType
                : foodType // ignore: cast_nullable_to_non_nullable
                    as String,
        totalWeightUsed:
            null == totalWeightUsed
                ? _value.totalWeightUsed
                : totalWeightUsed // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodUsageDetailImpl implements _FoodUsageDetail {
  _$FoodUsageDetailImpl({
    required this.foodType,
    required this.totalWeightUsed,
  });

  factory _$FoodUsageDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodUsageDetailImplFromJson(json);

  @override
  final String foodType;
  @override
  final double totalWeightUsed;

  @override
  String toString() {
    return 'FoodUsageDetail(foodType: $foodType, totalWeightUsed: $totalWeightUsed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodUsageDetailImpl &&
            (identical(other.foodType, foodType) ||
                other.foodType == foodType) &&
            (identical(other.totalWeightUsed, totalWeightUsed) ||
                other.totalWeightUsed == totalWeightUsed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, foodType, totalWeightUsed);

  /// Create a copy of FoodUsageDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodUsageDetailImplCopyWith<_$FoodUsageDetailImpl> get copyWith =>
      __$$FoodUsageDetailImplCopyWithImpl<_$FoodUsageDetailImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodUsageDetailImplToJson(this);
  }
}

abstract class _FoodUsageDetail implements FoodUsageDetail {
  factory _FoodUsageDetail({
    required final String foodType,
    required final double totalWeightUsed,
  }) = _$FoodUsageDetailImpl;

  factory _FoodUsageDetail.fromJson(Map<String, dynamic> json) =
      _$FoodUsageDetailImpl.fromJson;

  @override
  String get foodType;
  @override
  double get totalWeightUsed;

  /// Create a copy of FoodUsageDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodUsageDetailImplCopyWith<_$FoodUsageDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
