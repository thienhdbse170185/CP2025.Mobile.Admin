// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cage_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CageDto _$CageDtoFromJson(Map<String, dynamic> json) {
  return _CageDto.fromJson(json);
}

/// @nodoc
mixin _$CageDto {
  String get id => throw _privateConstructorUsedError;
  String get farmId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get area => throw _privateConstructorUsedError;
  int get capacity => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  /// Serializes this CageDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CageDtoCopyWith<CageDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CageDtoCopyWith<$Res> {
  factory $CageDtoCopyWith(CageDto value, $Res Function(CageDto) then) =
      _$CageDtoCopyWithImpl<$Res, CageDto>;
  @useResult
  $Res call({
    String id,
    String farmId,
    String name,
    int area,
    int capacity,
    String location,
  });
}

/// @nodoc
class _$CageDtoCopyWithImpl<$Res, $Val extends CageDto>
    implements $CageDtoCopyWith<$Res> {
  _$CageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? farmId = null,
    Object? name = null,
    Object? area = null,
    Object? capacity = null,
    Object? location = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            farmId:
                null == farmId
                    ? _value.farmId
                    : farmId // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            area:
                null == area
                    ? _value.area
                    : area // ignore: cast_nullable_to_non_nullable
                        as int,
            capacity:
                null == capacity
                    ? _value.capacity
                    : capacity // ignore: cast_nullable_to_non_nullable
                        as int,
            location:
                null == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CageDtoImplCopyWith<$Res> implements $CageDtoCopyWith<$Res> {
  factory _$$CageDtoImplCopyWith(
    _$CageDtoImpl value,
    $Res Function(_$CageDtoImpl) then,
  ) = __$$CageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String farmId,
    String name,
    int area,
    int capacity,
    String location,
  });
}

/// @nodoc
class __$$CageDtoImplCopyWithImpl<$Res>
    extends _$CageDtoCopyWithImpl<$Res, _$CageDtoImpl>
    implements _$$CageDtoImplCopyWith<$Res> {
  __$$CageDtoImplCopyWithImpl(
    _$CageDtoImpl _value,
    $Res Function(_$CageDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? farmId = null,
    Object? name = null,
    Object? area = null,
    Object? capacity = null,
    Object? location = null,
  }) {
    return _then(
      _$CageDtoImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        farmId:
            null == farmId
                ? _value.farmId
                : farmId // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        area:
            null == area
                ? _value.area
                : area // ignore: cast_nullable_to_non_nullable
                    as int,
        capacity:
            null == capacity
                ? _value.capacity
                : capacity // ignore: cast_nullable_to_non_nullable
                    as int,
        location:
            null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CageDtoImpl implements _CageDto {
  _$CageDtoImpl({
    required this.id,
    required this.farmId,
    required this.name,
    required this.area,
    required this.capacity,
    required this.location,
  });

  factory _$CageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CageDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String farmId;
  @override
  final String name;
  @override
  final int area;
  @override
  final int capacity;
  @override
  final String location;

  @override
  String toString() {
    return 'CageDto(id: $id, farmId: $farmId, name: $name, area: $area, capacity: $capacity, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CageDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.farmId, farmId) || other.farmId == farmId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, farmId, name, area, capacity, location);

  /// Create a copy of CageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CageDtoImplCopyWith<_$CageDtoImpl> get copyWith =>
      __$$CageDtoImplCopyWithImpl<_$CageDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CageDtoImplToJson(this);
  }
}

abstract class _CageDto implements CageDto {
  factory _CageDto({
    required final String id,
    required final String farmId,
    required final String name,
    required final int area,
    required final int capacity,
    required final String location,
  }) = _$CageDtoImpl;

  factory _CageDto.fromJson(Map<String, dynamic> json) = _$CageDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get farmId;
  @override
  String get name;
  @override
  int get area;
  @override
  int get capacity;
  @override
  String get location;

  /// Create a copy of CageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CageDtoImplCopyWith<_$CageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
