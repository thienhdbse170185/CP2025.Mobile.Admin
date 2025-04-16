// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vaccine_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VaccineDetail _$VaccineDetailFromJson(Map<String, dynamic> json) {
  return _VaccineDetail.fromJson(json);
}

/// @nodoc
mixin _$VaccineDetail {
  String get vaccineName => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;
  DateTime get dateAdministered => throw _privateConstructorUsedError;

  /// Serializes this VaccineDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VaccineDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VaccineDetailCopyWith<VaccineDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineDetailCopyWith<$Res> {
  factory $VaccineDetailCopyWith(
    VaccineDetail value,
    $Res Function(VaccineDetail) then,
  ) = _$VaccineDetailCopyWithImpl<$Res, VaccineDetail>;
  @useResult
  $Res call({
    String vaccineName,
    int quantity,
    int totalPrice,
    DateTime dateAdministered,
  });
}

/// @nodoc
class _$VaccineDetailCopyWithImpl<$Res, $Val extends VaccineDetail>
    implements $VaccineDetailCopyWith<$Res> {
  _$VaccineDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VaccineDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaccineName = null,
    Object? quantity = null,
    Object? totalPrice = null,
    Object? dateAdministered = null,
  }) {
    return _then(
      _value.copyWith(
            vaccineName:
                null == vaccineName
                    ? _value.vaccineName
                    : vaccineName // ignore: cast_nullable_to_non_nullable
                        as String,
            quantity:
                null == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as int,
            totalPrice:
                null == totalPrice
                    ? _value.totalPrice
                    : totalPrice // ignore: cast_nullable_to_non_nullable
                        as int,
            dateAdministered:
                null == dateAdministered
                    ? _value.dateAdministered
                    : dateAdministered // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VaccineDetailImplCopyWith<$Res>
    implements $VaccineDetailCopyWith<$Res> {
  factory _$$VaccineDetailImplCopyWith(
    _$VaccineDetailImpl value,
    $Res Function(_$VaccineDetailImpl) then,
  ) = __$$VaccineDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String vaccineName,
    int quantity,
    int totalPrice,
    DateTime dateAdministered,
  });
}

/// @nodoc
class __$$VaccineDetailImplCopyWithImpl<$Res>
    extends _$VaccineDetailCopyWithImpl<$Res, _$VaccineDetailImpl>
    implements _$$VaccineDetailImplCopyWith<$Res> {
  __$$VaccineDetailImplCopyWithImpl(
    _$VaccineDetailImpl _value,
    $Res Function(_$VaccineDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VaccineDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaccineName = null,
    Object? quantity = null,
    Object? totalPrice = null,
    Object? dateAdministered = null,
  }) {
    return _then(
      _$VaccineDetailImpl(
        vaccineName:
            null == vaccineName
                ? _value.vaccineName
                : vaccineName // ignore: cast_nullable_to_non_nullable
                    as String,
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as int,
        totalPrice:
            null == totalPrice
                ? _value.totalPrice
                : totalPrice // ignore: cast_nullable_to_non_nullable
                    as int,
        dateAdministered:
            null == dateAdministered
                ? _value.dateAdministered
                : dateAdministered // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VaccineDetailImpl implements _VaccineDetail {
  _$VaccineDetailImpl({
    required this.vaccineName,
    required this.quantity,
    required this.totalPrice,
    required this.dateAdministered,
  });

  factory _$VaccineDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$VaccineDetailImplFromJson(json);

  @override
  final String vaccineName;
  @override
  final int quantity;
  @override
  final int totalPrice;
  @override
  final DateTime dateAdministered;

  @override
  String toString() {
    return 'VaccineDetail(vaccineName: $vaccineName, quantity: $quantity, totalPrice: $totalPrice, dateAdministered: $dateAdministered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VaccineDetailImpl &&
            (identical(other.vaccineName, vaccineName) ||
                other.vaccineName == vaccineName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.dateAdministered, dateAdministered) ||
                other.dateAdministered == dateAdministered));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    vaccineName,
    quantity,
    totalPrice,
    dateAdministered,
  );

  /// Create a copy of VaccineDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VaccineDetailImplCopyWith<_$VaccineDetailImpl> get copyWith =>
      __$$VaccineDetailImplCopyWithImpl<_$VaccineDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VaccineDetailImplToJson(this);
  }
}

abstract class _VaccineDetail implements VaccineDetail {
  factory _VaccineDetail({
    required final String vaccineName,
    required final int quantity,
    required final int totalPrice,
    required final DateTime dateAdministered,
  }) = _$VaccineDetailImpl;

  factory _VaccineDetail.fromJson(Map<String, dynamic> json) =
      _$VaccineDetailImpl.fromJson;

  @override
  String get vaccineName;
  @override
  int get quantity;
  @override
  int get totalPrice;
  @override
  DateTime get dateAdministered;

  /// Create a copy of VaccineDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VaccineDetailImplCopyWith<_$VaccineDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
