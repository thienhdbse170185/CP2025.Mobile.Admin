// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'growth_stage_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GrowthStageReport _$GrowthStageReportFromJson(Map<String, dynamic> json) {
  return _GrowthStageReport.fromJson(json);
}

/// @nodoc
mixin _$GrowthStageReport {
  String get stageId => throw _privateConstructorUsedError;
  String get stageName => throw _privateConstructorUsedError;
  DateTime get ageStartDate => throw _privateConstructorUsedError;
  DateTime get ageEndDate => throw _privateConstructorUsedError;
  double get weightAnimal => throw _privateConstructorUsedError;
  double get weightAnimalExpect => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get deadQuantity => throw _privateConstructorUsedError;
  List<VaccineDetail> get vaccines => throw _privateConstructorUsedError;
  List<FoodDetail> get foods => throw _privateConstructorUsedError;
  List<PrescriptionDetail> get prescriptions =>
      throw _privateConstructorUsedError;

  /// Serializes this GrowthStageReport to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GrowthStageReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GrowthStageReportCopyWith<GrowthStageReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrowthStageReportCopyWith<$Res> {
  factory $GrowthStageReportCopyWith(
    GrowthStageReport value,
    $Res Function(GrowthStageReport) then,
  ) = _$GrowthStageReportCopyWithImpl<$Res, GrowthStageReport>;
  @useResult
  $Res call({
    String stageId,
    String stageName,
    DateTime ageStartDate,
    DateTime ageEndDate,
    double weightAnimal,
    double weightAnimalExpect,
    int quantity,
    int deadQuantity,
    List<VaccineDetail> vaccines,
    List<FoodDetail> foods,
    List<PrescriptionDetail> prescriptions,
  });
}

/// @nodoc
class _$GrowthStageReportCopyWithImpl<$Res, $Val extends GrowthStageReport>
    implements $GrowthStageReportCopyWith<$Res> {
  _$GrowthStageReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GrowthStageReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stageId = null,
    Object? stageName = null,
    Object? ageStartDate = null,
    Object? ageEndDate = null,
    Object? weightAnimal = null,
    Object? weightAnimalExpect = null,
    Object? quantity = null,
    Object? deadQuantity = null,
    Object? vaccines = null,
    Object? foods = null,
    Object? prescriptions = null,
  }) {
    return _then(
      _value.copyWith(
            stageId:
                null == stageId
                    ? _value.stageId
                    : stageId // ignore: cast_nullable_to_non_nullable
                        as String,
            stageName:
                null == stageName
                    ? _value.stageName
                    : stageName // ignore: cast_nullable_to_non_nullable
                        as String,
            ageStartDate:
                null == ageStartDate
                    ? _value.ageStartDate
                    : ageStartDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            ageEndDate:
                null == ageEndDate
                    ? _value.ageEndDate
                    : ageEndDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            weightAnimal:
                null == weightAnimal
                    ? _value.weightAnimal
                    : weightAnimal // ignore: cast_nullable_to_non_nullable
                        as double,
            weightAnimalExpect:
                null == weightAnimalExpect
                    ? _value.weightAnimalExpect
                    : weightAnimalExpect // ignore: cast_nullable_to_non_nullable
                        as double,
            quantity:
                null == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as int,
            deadQuantity:
                null == deadQuantity
                    ? _value.deadQuantity
                    : deadQuantity // ignore: cast_nullable_to_non_nullable
                        as int,
            vaccines:
                null == vaccines
                    ? _value.vaccines
                    : vaccines // ignore: cast_nullable_to_non_nullable
                        as List<VaccineDetail>,
            foods:
                null == foods
                    ? _value.foods
                    : foods // ignore: cast_nullable_to_non_nullable
                        as List<FoodDetail>,
            prescriptions:
                null == prescriptions
                    ? _value.prescriptions
                    : prescriptions // ignore: cast_nullable_to_non_nullable
                        as List<PrescriptionDetail>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GrowthStageReportImplCopyWith<$Res>
    implements $GrowthStageReportCopyWith<$Res> {
  factory _$$GrowthStageReportImplCopyWith(
    _$GrowthStageReportImpl value,
    $Res Function(_$GrowthStageReportImpl) then,
  ) = __$$GrowthStageReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String stageId,
    String stageName,
    DateTime ageStartDate,
    DateTime ageEndDate,
    double weightAnimal,
    double weightAnimalExpect,
    int quantity,
    int deadQuantity,
    List<VaccineDetail> vaccines,
    List<FoodDetail> foods,
    List<PrescriptionDetail> prescriptions,
  });
}

/// @nodoc
class __$$GrowthStageReportImplCopyWithImpl<$Res>
    extends _$GrowthStageReportCopyWithImpl<$Res, _$GrowthStageReportImpl>
    implements _$$GrowthStageReportImplCopyWith<$Res> {
  __$$GrowthStageReportImplCopyWithImpl(
    _$GrowthStageReportImpl _value,
    $Res Function(_$GrowthStageReportImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GrowthStageReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stageId = null,
    Object? stageName = null,
    Object? ageStartDate = null,
    Object? ageEndDate = null,
    Object? weightAnimal = null,
    Object? weightAnimalExpect = null,
    Object? quantity = null,
    Object? deadQuantity = null,
    Object? vaccines = null,
    Object? foods = null,
    Object? prescriptions = null,
  }) {
    return _then(
      _$GrowthStageReportImpl(
        stageId:
            null == stageId
                ? _value.stageId
                : stageId // ignore: cast_nullable_to_non_nullable
                    as String,
        stageName:
            null == stageName
                ? _value.stageName
                : stageName // ignore: cast_nullable_to_non_nullable
                    as String,
        ageStartDate:
            null == ageStartDate
                ? _value.ageStartDate
                : ageStartDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        ageEndDate:
            null == ageEndDate
                ? _value.ageEndDate
                : ageEndDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        weightAnimal:
            null == weightAnimal
                ? _value.weightAnimal
                : weightAnimal // ignore: cast_nullable_to_non_nullable
                    as double,
        weightAnimalExpect:
            null == weightAnimalExpect
                ? _value.weightAnimalExpect
                : weightAnimalExpect // ignore: cast_nullable_to_non_nullable
                    as double,
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as int,
        deadQuantity:
            null == deadQuantity
                ? _value.deadQuantity
                : deadQuantity // ignore: cast_nullable_to_non_nullable
                    as int,
        vaccines:
            null == vaccines
                ? _value._vaccines
                : vaccines // ignore: cast_nullable_to_non_nullable
                    as List<VaccineDetail>,
        foods:
            null == foods
                ? _value._foods
                : foods // ignore: cast_nullable_to_non_nullable
                    as List<FoodDetail>,
        prescriptions:
            null == prescriptions
                ? _value._prescriptions
                : prescriptions // ignore: cast_nullable_to_non_nullable
                    as List<PrescriptionDetail>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GrowthStageReportImpl implements _GrowthStageReport {
  _$GrowthStageReportImpl({
    required this.stageId,
    required this.stageName,
    required this.ageStartDate,
    required this.ageEndDate,
    required this.weightAnimal,
    required this.weightAnimalExpect,
    this.quantity = 0,
    this.deadQuantity = 0,
    final List<VaccineDetail> vaccines = const [],
    final List<FoodDetail> foods = const [],
    final List<PrescriptionDetail> prescriptions = const [],
  }) : _vaccines = vaccines,
       _foods = foods,
       _prescriptions = prescriptions;

  factory _$GrowthStageReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$GrowthStageReportImplFromJson(json);

  @override
  final String stageId;
  @override
  final String stageName;
  @override
  final DateTime ageStartDate;
  @override
  final DateTime ageEndDate;
  @override
  final double weightAnimal;
  @override
  final double weightAnimalExpect;
  @override
  @JsonKey()
  final int quantity;
  @override
  @JsonKey()
  final int deadQuantity;
  final List<VaccineDetail> _vaccines;
  @override
  @JsonKey()
  List<VaccineDetail> get vaccines {
    if (_vaccines is EqualUnmodifiableListView) return _vaccines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vaccines);
  }

  final List<FoodDetail> _foods;
  @override
  @JsonKey()
  List<FoodDetail> get foods {
    if (_foods is EqualUnmodifiableListView) return _foods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foods);
  }

  final List<PrescriptionDetail> _prescriptions;
  @override
  @JsonKey()
  List<PrescriptionDetail> get prescriptions {
    if (_prescriptions is EqualUnmodifiableListView) return _prescriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prescriptions);
  }

  @override
  String toString() {
    return 'GrowthStageReport(stageId: $stageId, stageName: $stageName, ageStartDate: $ageStartDate, ageEndDate: $ageEndDate, weightAnimal: $weightAnimal, weightAnimalExpect: $weightAnimalExpect, quantity: $quantity, deadQuantity: $deadQuantity, vaccines: $vaccines, foods: $foods, prescriptions: $prescriptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrowthStageReportImpl &&
            (identical(other.stageId, stageId) || other.stageId == stageId) &&
            (identical(other.stageName, stageName) ||
                other.stageName == stageName) &&
            (identical(other.ageStartDate, ageStartDate) ||
                other.ageStartDate == ageStartDate) &&
            (identical(other.ageEndDate, ageEndDate) ||
                other.ageEndDate == ageEndDate) &&
            (identical(other.weightAnimal, weightAnimal) ||
                other.weightAnimal == weightAnimal) &&
            (identical(other.weightAnimalExpect, weightAnimalExpect) ||
                other.weightAnimalExpect == weightAnimalExpect) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.deadQuantity, deadQuantity) ||
                other.deadQuantity == deadQuantity) &&
            const DeepCollectionEquality().equals(other._vaccines, _vaccines) &&
            const DeepCollectionEquality().equals(other._foods, _foods) &&
            const DeepCollectionEquality().equals(
              other._prescriptions,
              _prescriptions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    stageId,
    stageName,
    ageStartDate,
    ageEndDate,
    weightAnimal,
    weightAnimalExpect,
    quantity,
    deadQuantity,
    const DeepCollectionEquality().hash(_vaccines),
    const DeepCollectionEquality().hash(_foods),
    const DeepCollectionEquality().hash(_prescriptions),
  );

  /// Create a copy of GrowthStageReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GrowthStageReportImplCopyWith<_$GrowthStageReportImpl> get copyWith =>
      __$$GrowthStageReportImplCopyWithImpl<_$GrowthStageReportImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GrowthStageReportImplToJson(this);
  }
}

abstract class _GrowthStageReport implements GrowthStageReport {
  factory _GrowthStageReport({
    required final String stageId,
    required final String stageName,
    required final DateTime ageStartDate,
    required final DateTime ageEndDate,
    required final double weightAnimal,
    required final double weightAnimalExpect,
    final int quantity,
    final int deadQuantity,
    final List<VaccineDetail> vaccines,
    final List<FoodDetail> foods,
    final List<PrescriptionDetail> prescriptions,
  }) = _$GrowthStageReportImpl;

  factory _GrowthStageReport.fromJson(Map<String, dynamic> json) =
      _$GrowthStageReportImpl.fromJson;

  @override
  String get stageId;
  @override
  String get stageName;
  @override
  DateTime get ageStartDate;
  @override
  DateTime get ageEndDate;
  @override
  double get weightAnimal;
  @override
  double get weightAnimalExpect;
  @override
  int get quantity;
  @override
  int get deadQuantity;
  @override
  List<VaccineDetail> get vaccines;
  @override
  List<FoodDetail> get foods;
  @override
  List<PrescriptionDetail> get prescriptions;

  /// Create a copy of GrowthStageReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GrowthStageReportImplCopyWith<_$GrowthStageReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
