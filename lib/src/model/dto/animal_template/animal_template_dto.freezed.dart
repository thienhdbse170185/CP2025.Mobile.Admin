// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'animal_template_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AnimalTemplateDto _$AnimalTemplateDtoFromJson(Map<String, dynamic> json) {
  return _AnimalTemplateDto.fromJson(json);
}

/// @nodoc
mixin _$AnimalTemplateDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;

  /// Serializes this AnimalTemplateDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnimalTemplateDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnimalTemplateDtoCopyWith<AnimalTemplateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalTemplateDtoCopyWith<$Res> {
  factory $AnimalTemplateDtoCopyWith(
    AnimalTemplateDto value,
    $Res Function(AnimalTemplateDto) then,
  ) = _$AnimalTemplateDtoCopyWithImpl<$Res, AnimalTemplateDto>;
  @useResult
  $Res call({
    String id,
    String name,
    String species,
    String status,
    String notes,
  });
}

/// @nodoc
class _$AnimalTemplateDtoCopyWithImpl<$Res, $Val extends AnimalTemplateDto>
    implements $AnimalTemplateDtoCopyWith<$Res> {
  _$AnimalTemplateDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnimalTemplateDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? species = null,
    Object? status = null,
    Object? notes = null,
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
            species:
                null == species
                    ? _value.species
                    : species // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            notes:
                null == notes
                    ? _value.notes
                    : notes // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AnimalTemplateDtoImplCopyWith<$Res>
    implements $AnimalTemplateDtoCopyWith<$Res> {
  factory _$$AnimalTemplateDtoImplCopyWith(
    _$AnimalTemplateDtoImpl value,
    $Res Function(_$AnimalTemplateDtoImpl) then,
  ) = __$$AnimalTemplateDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String species,
    String status,
    String notes,
  });
}

/// @nodoc
class __$$AnimalTemplateDtoImplCopyWithImpl<$Res>
    extends _$AnimalTemplateDtoCopyWithImpl<$Res, _$AnimalTemplateDtoImpl>
    implements _$$AnimalTemplateDtoImplCopyWith<$Res> {
  __$$AnimalTemplateDtoImplCopyWithImpl(
    _$AnimalTemplateDtoImpl _value,
    $Res Function(_$AnimalTemplateDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AnimalTemplateDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? species = null,
    Object? status = null,
    Object? notes = null,
  }) {
    return _then(
      _$AnimalTemplateDtoImpl(
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
        species:
            null == species
                ? _value.species
                : species // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        notes:
            null == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimalTemplateDtoImpl implements _AnimalTemplateDto {
  _$AnimalTemplateDtoImpl({
    required this.id,
    required this.name,
    required this.species,
    required this.status,
    required this.notes,
  });

  factory _$AnimalTemplateDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnimalTemplateDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String species;
  @override
  final String status;
  @override
  final String notes;

  @override
  String toString() {
    return 'AnimalTemplateDto(id: $id, name: $name, species: $species, status: $status, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimalTemplateDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, species, status, notes);

  /// Create a copy of AnimalTemplateDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimalTemplateDtoImplCopyWith<_$AnimalTemplateDtoImpl> get copyWith =>
      __$$AnimalTemplateDtoImplCopyWithImpl<_$AnimalTemplateDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimalTemplateDtoImplToJson(this);
  }
}

abstract class _AnimalTemplateDto implements AnimalTemplateDto {
  factory _AnimalTemplateDto({
    required final String id,
    required final String name,
    required final String species,
    required final String status,
    required final String notes,
  }) = _$AnimalTemplateDtoImpl;

  factory _AnimalTemplateDto.fromJson(Map<String, dynamic> json) =
      _$AnimalTemplateDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get species;
  @override
  String get status;
  @override
  String get notes;

  /// Create a copy of AnimalTemplateDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnimalTemplateDtoImplCopyWith<_$AnimalTemplateDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
