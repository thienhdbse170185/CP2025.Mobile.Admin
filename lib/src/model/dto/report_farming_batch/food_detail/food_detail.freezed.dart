// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FoodDetail _$FoodDetailFromJson(Map<String, dynamic> json) {
  return _FoodDetail.fromJson(json);
}

/// @nodoc
mixin _$FoodDetail {
  String get foodType => throw _privateConstructorUsedError;
  double get totalWeightUsed => throw _privateConstructorUsedError;

  /// Serializes this FoodDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FoodDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodDetailCopyWith<FoodDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodDetailCopyWith<$Res> {
  factory $FoodDetailCopyWith(
    FoodDetail value,
    $Res Function(FoodDetail) then,
  ) = _$FoodDetailCopyWithImpl<$Res, FoodDetail>;
  @useResult
  $Res call({String foodType, double totalWeightUsed});
}

/// @nodoc
class _$FoodDetailCopyWithImpl<$Res, $Val extends FoodDetail>
    implements $FoodDetailCopyWith<$Res> {
  _$FoodDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodDetail
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
abstract class _$$FoodDetailImplCopyWith<$Res>
    implements $FoodDetailCopyWith<$Res> {
  factory _$$FoodDetailImplCopyWith(
    _$FoodDetailImpl value,
    $Res Function(_$FoodDetailImpl) then,
  ) = __$$FoodDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String foodType, double totalWeightUsed});
}

/// @nodoc
class __$$FoodDetailImplCopyWithImpl<$Res>
    extends _$FoodDetailCopyWithImpl<$Res, _$FoodDetailImpl>
    implements _$$FoodDetailImplCopyWith<$Res> {
  __$$FoodDetailImplCopyWithImpl(
    _$FoodDetailImpl _value,
    $Res Function(_$FoodDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FoodDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? foodType = null, Object? totalWeightUsed = null}) {
    return _then(
      _$FoodDetailImpl(
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
class _$FoodDetailImpl implements _FoodDetail {
  _$FoodDetailImpl({required this.foodType, required this.totalWeightUsed});

  factory _$FoodDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodDetailImplFromJson(json);

  @override
  final String foodType;
  @override
  final double totalWeightUsed;

  @override
  String toString() {
    return 'FoodDetail(foodType: $foodType, totalWeightUsed: $totalWeightUsed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodDetailImpl &&
            (identical(other.foodType, foodType) ||
                other.foodType == foodType) &&
            (identical(other.totalWeightUsed, totalWeightUsed) ||
                other.totalWeightUsed == totalWeightUsed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, foodType, totalWeightUsed);

  /// Create a copy of FoodDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodDetailImplCopyWith<_$FoodDetailImpl> get copyWith =>
      __$$FoodDetailImplCopyWithImpl<_$FoodDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodDetailImplToJson(this);
  }
}

abstract class _FoodDetail implements FoodDetail {
  factory _FoodDetail({
    required final String foodType,
    required final double totalWeightUsed,
  }) = _$FoodDetailImpl;

  factory _FoodDetail.fromJson(Map<String, dynamic> json) =
      _$FoodDetailImpl.fromJson;

  @override
  String get foodType;
  @override
  double get totalWeightUsed;

  /// Create a copy of FoodDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodDetailImplCopyWith<_$FoodDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
