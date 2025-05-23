// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserProfile,
    required TResult Function() updateDeviceToken,
    required TResult Function(String username, bool isResend, String? email)
    sendOTP,
    required TResult Function(String oldPassword, String newPassword)
    updatePassword,
    required TResult Function(String email, String otp) verifyOTP,
    required TResult Function() getUserProfileByUserId,
    required TResult Function(UpdateUserInfoRequest request) updateUserInfo,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserProfile,
    TResult? Function()? updateDeviceToken,
    TResult? Function(String username, bool isResend, String? email)? sendOTP,
    TResult? Function(String oldPassword, String newPassword)? updatePassword,
    TResult? Function(String email, String otp)? verifyOTP,
    TResult? Function()? getUserProfileByUserId,
    TResult? Function(UpdateUserInfoRequest request)? updateUserInfo,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserProfile,
    TResult Function()? updateDeviceToken,
    TResult Function(String username, bool isResend, String? email)? sendOTP,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(String email, String otp)? verifyOTP,
    TResult Function()? getUserProfileByUserId,
    TResult Function(UpdateUserInfoRequest request)? updateUserInfo,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetUserProfile value) getUserProfile,
    required TResult Function(_UpdateDeviceToken value) updateDeviceToken,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_GetUserProfileByUserId value)
    getUserProfileByUserId,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetUserProfile value)? getUserProfile,
    TResult? Function(_UpdateDeviceToken value)? updateDeviceToken,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_GetUserProfileByUserId value)? getUserProfileByUserId,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetUserProfile value)? getUserProfile,
    TResult Function(_UpdateDeviceToken value)? updateDeviceToken,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_GetUserProfileByUserId value)? getUserProfileByUserId,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UserEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserProfile,
    required TResult Function() updateDeviceToken,
    required TResult Function(String username, bool isResend, String? email)
    sendOTP,
    required TResult Function(String oldPassword, String newPassword)
    updatePassword,
    required TResult Function(String email, String otp) verifyOTP,
    required TResult Function() getUserProfileByUserId,
    required TResult Function(UpdateUserInfoRequest request) updateUserInfo,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserProfile,
    TResult? Function()? updateDeviceToken,
    TResult? Function(String username, bool isResend, String? email)? sendOTP,
    TResult? Function(String oldPassword, String newPassword)? updatePassword,
    TResult? Function(String email, String otp)? verifyOTP,
    TResult? Function()? getUserProfileByUserId,
    TResult? Function(UpdateUserInfoRequest request)? updateUserInfo,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserProfile,
    TResult Function()? updateDeviceToken,
    TResult Function(String username, bool isResend, String? email)? sendOTP,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(String email, String otp)? verifyOTP,
    TResult Function()? getUserProfileByUserId,
    TResult Function(UpdateUserInfoRequest request)? updateUserInfo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetUserProfile value) getUserProfile,
    required TResult Function(_UpdateDeviceToken value) updateDeviceToken,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_GetUserProfileByUserId value)
    getUserProfileByUserId,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetUserProfile value)? getUserProfile,
    TResult? Function(_UpdateDeviceToken value)? updateDeviceToken,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_GetUserProfileByUserId value)? getUserProfileByUserId,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetUserProfile value)? getUserProfile,
    TResult Function(_UpdateDeviceToken value)? updateDeviceToken,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_GetUserProfileByUserId value)? getUserProfileByUserId,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetUserProfileImplCopyWith<$Res> {
  factory _$$GetUserProfileImplCopyWith(
    _$GetUserProfileImpl value,
    $Res Function(_$GetUserProfileImpl) then,
  ) = __$$GetUserProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserProfileImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUserProfileImpl>
    implements _$$GetUserProfileImplCopyWith<$Res> {
  __$$GetUserProfileImplCopyWithImpl(
    _$GetUserProfileImpl _value,
    $Res Function(_$GetUserProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserProfileImpl implements _GetUserProfile {
  const _$GetUserProfileImpl();

  @override
  String toString() {
    return 'UserEvent.getUserProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserProfile,
    required TResult Function() updateDeviceToken,
    required TResult Function(String username, bool isResend, String? email)
    sendOTP,
    required TResult Function(String oldPassword, String newPassword)
    updatePassword,
    required TResult Function(String email, String otp) verifyOTP,
    required TResult Function() getUserProfileByUserId,
    required TResult Function(UpdateUserInfoRequest request) updateUserInfo,
  }) {
    return getUserProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserProfile,
    TResult? Function()? updateDeviceToken,
    TResult? Function(String username, bool isResend, String? email)? sendOTP,
    TResult? Function(String oldPassword, String newPassword)? updatePassword,
    TResult? Function(String email, String otp)? verifyOTP,
    TResult? Function()? getUserProfileByUserId,
    TResult? Function(UpdateUserInfoRequest request)? updateUserInfo,
  }) {
    return getUserProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserProfile,
    TResult Function()? updateDeviceToken,
    TResult Function(String username, bool isResend, String? email)? sendOTP,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(String email, String otp)? verifyOTP,
    TResult Function()? getUserProfileByUserId,
    TResult Function(UpdateUserInfoRequest request)? updateUserInfo,
    required TResult orElse(),
  }) {
    if (getUserProfile != null) {
      return getUserProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetUserProfile value) getUserProfile,
    required TResult Function(_UpdateDeviceToken value) updateDeviceToken,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_GetUserProfileByUserId value)
    getUserProfileByUserId,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
  }) {
    return getUserProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetUserProfile value)? getUserProfile,
    TResult? Function(_UpdateDeviceToken value)? updateDeviceToken,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_GetUserProfileByUserId value)? getUserProfileByUserId,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
  }) {
    return getUserProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetUserProfile value)? getUserProfile,
    TResult Function(_UpdateDeviceToken value)? updateDeviceToken,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_GetUserProfileByUserId value)? getUserProfileByUserId,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    required TResult orElse(),
  }) {
    if (getUserProfile != null) {
      return getUserProfile(this);
    }
    return orElse();
  }
}

abstract class _GetUserProfile implements UserEvent {
  const factory _GetUserProfile() = _$GetUserProfileImpl;
}

/// @nodoc
abstract class _$$UpdateDeviceTokenImplCopyWith<$Res> {
  factory _$$UpdateDeviceTokenImplCopyWith(
    _$UpdateDeviceTokenImpl value,
    $Res Function(_$UpdateDeviceTokenImpl) then,
  ) = __$$UpdateDeviceTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateDeviceTokenImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UpdateDeviceTokenImpl>
    implements _$$UpdateDeviceTokenImplCopyWith<$Res> {
  __$$UpdateDeviceTokenImplCopyWithImpl(
    _$UpdateDeviceTokenImpl _value,
    $Res Function(_$UpdateDeviceTokenImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateDeviceTokenImpl implements _UpdateDeviceToken {
  const _$UpdateDeviceTokenImpl();

  @override
  String toString() {
    return 'UserEvent.updateDeviceToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateDeviceTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserProfile,
    required TResult Function() updateDeviceToken,
    required TResult Function(String username, bool isResend, String? email)
    sendOTP,
    required TResult Function(String oldPassword, String newPassword)
    updatePassword,
    required TResult Function(String email, String otp) verifyOTP,
    required TResult Function() getUserProfileByUserId,
    required TResult Function(UpdateUserInfoRequest request) updateUserInfo,
  }) {
    return updateDeviceToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserProfile,
    TResult? Function()? updateDeviceToken,
    TResult? Function(String username, bool isResend, String? email)? sendOTP,
    TResult? Function(String oldPassword, String newPassword)? updatePassword,
    TResult? Function(String email, String otp)? verifyOTP,
    TResult? Function()? getUserProfileByUserId,
    TResult? Function(UpdateUserInfoRequest request)? updateUserInfo,
  }) {
    return updateDeviceToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserProfile,
    TResult Function()? updateDeviceToken,
    TResult Function(String username, bool isResend, String? email)? sendOTP,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(String email, String otp)? verifyOTP,
    TResult Function()? getUserProfileByUserId,
    TResult Function(UpdateUserInfoRequest request)? updateUserInfo,
    required TResult orElse(),
  }) {
    if (updateDeviceToken != null) {
      return updateDeviceToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetUserProfile value) getUserProfile,
    required TResult Function(_UpdateDeviceToken value) updateDeviceToken,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_GetUserProfileByUserId value)
    getUserProfileByUserId,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
  }) {
    return updateDeviceToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetUserProfile value)? getUserProfile,
    TResult? Function(_UpdateDeviceToken value)? updateDeviceToken,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_GetUserProfileByUserId value)? getUserProfileByUserId,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
  }) {
    return updateDeviceToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetUserProfile value)? getUserProfile,
    TResult Function(_UpdateDeviceToken value)? updateDeviceToken,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_GetUserProfileByUserId value)? getUserProfileByUserId,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    required TResult orElse(),
  }) {
    if (updateDeviceToken != null) {
      return updateDeviceToken(this);
    }
    return orElse();
  }
}

abstract class _UpdateDeviceToken implements UserEvent {
  const factory _UpdateDeviceToken() = _$UpdateDeviceTokenImpl;
}

/// @nodoc
abstract class _$$SendOTPImplCopyWith<$Res> {
  factory _$$SendOTPImplCopyWith(
    _$SendOTPImpl value,
    $Res Function(_$SendOTPImpl) then,
  ) = __$$SendOTPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, bool isResend, String? email});
}

/// @nodoc
class __$$SendOTPImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SendOTPImpl>
    implements _$$SendOTPImplCopyWith<$Res> {
  __$$SendOTPImplCopyWithImpl(
    _$SendOTPImpl _value,
    $Res Function(_$SendOTPImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? isResend = null,
    Object? email = freezed,
  }) {
    return _then(
      _$SendOTPImpl(
        username:
            null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                    as String,
        isResend:
            null == isResend
                ? _value.isResend
                : isResend // ignore: cast_nullable_to_non_nullable
                    as bool,
        email:
            freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$SendOTPImpl implements _SendOTP {
  const _$SendOTPImpl({
    required this.username,
    required this.isResend,
    this.email,
  });

  @override
  final String username;
  @override
  final bool isResend;
  @override
  final String? email;

  @override
  String toString() {
    return 'UserEvent.sendOTP(username: $username, isResend: $isResend, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOTPImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.isResend, isResend) ||
                other.isResend == isResend) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, isResend, email);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOTPImplCopyWith<_$SendOTPImpl> get copyWith =>
      __$$SendOTPImplCopyWithImpl<_$SendOTPImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserProfile,
    required TResult Function() updateDeviceToken,
    required TResult Function(String username, bool isResend, String? email)
    sendOTP,
    required TResult Function(String oldPassword, String newPassword)
    updatePassword,
    required TResult Function(String email, String otp) verifyOTP,
    required TResult Function() getUserProfileByUserId,
    required TResult Function(UpdateUserInfoRequest request) updateUserInfo,
  }) {
    return sendOTP(username, isResend, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserProfile,
    TResult? Function()? updateDeviceToken,
    TResult? Function(String username, bool isResend, String? email)? sendOTP,
    TResult? Function(String oldPassword, String newPassword)? updatePassword,
    TResult? Function(String email, String otp)? verifyOTP,
    TResult? Function()? getUserProfileByUserId,
    TResult? Function(UpdateUserInfoRequest request)? updateUserInfo,
  }) {
    return sendOTP?.call(username, isResend, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserProfile,
    TResult Function()? updateDeviceToken,
    TResult Function(String username, bool isResend, String? email)? sendOTP,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(String email, String otp)? verifyOTP,
    TResult Function()? getUserProfileByUserId,
    TResult Function(UpdateUserInfoRequest request)? updateUserInfo,
    required TResult orElse(),
  }) {
    if (sendOTP != null) {
      return sendOTP(username, isResend, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetUserProfile value) getUserProfile,
    required TResult Function(_UpdateDeviceToken value) updateDeviceToken,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_GetUserProfileByUserId value)
    getUserProfileByUserId,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
  }) {
    return sendOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetUserProfile value)? getUserProfile,
    TResult? Function(_UpdateDeviceToken value)? updateDeviceToken,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_GetUserProfileByUserId value)? getUserProfileByUserId,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
  }) {
    return sendOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetUserProfile value)? getUserProfile,
    TResult Function(_UpdateDeviceToken value)? updateDeviceToken,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_GetUserProfileByUserId value)? getUserProfileByUserId,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    required TResult orElse(),
  }) {
    if (sendOTP != null) {
      return sendOTP(this);
    }
    return orElse();
  }
}

abstract class _SendOTP implements UserEvent {
  const factory _SendOTP({
    required final String username,
    required final bool isResend,
    final String? email,
  }) = _$SendOTPImpl;

  String get username;
  bool get isResend;
  String? get email;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendOTPImplCopyWith<_$SendOTPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePasswordImplCopyWith<$Res> {
  factory _$$UpdatePasswordImplCopyWith(
    _$UpdatePasswordImpl value,
    $Res Function(_$UpdatePasswordImpl) then,
  ) = __$$UpdatePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class __$$UpdatePasswordImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UpdatePasswordImpl>
    implements _$$UpdatePasswordImplCopyWith<$Res> {
  __$$UpdatePasswordImplCopyWithImpl(
    _$UpdatePasswordImpl _value,
    $Res Function(_$UpdatePasswordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? oldPassword = null, Object? newPassword = null}) {
    return _then(
      _$UpdatePasswordImpl(
        oldPassword:
            null == oldPassword
                ? _value.oldPassword
                : oldPassword // ignore: cast_nullable_to_non_nullable
                    as String,
        newPassword:
            null == newPassword
                ? _value.newPassword
                : newPassword // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$UpdatePasswordImpl implements _UpdatePassword {
  const _$UpdatePasswordImpl({
    required this.oldPassword,
    required this.newPassword,
  });

  @override
  final String oldPassword;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'UserEvent.updatePassword(oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePasswordImpl &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newPassword);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePasswordImplCopyWith<_$UpdatePasswordImpl> get copyWith =>
      __$$UpdatePasswordImplCopyWithImpl<_$UpdatePasswordImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserProfile,
    required TResult Function() updateDeviceToken,
    required TResult Function(String username, bool isResend, String? email)
    sendOTP,
    required TResult Function(String oldPassword, String newPassword)
    updatePassword,
    required TResult Function(String email, String otp) verifyOTP,
    required TResult Function() getUserProfileByUserId,
    required TResult Function(UpdateUserInfoRequest request) updateUserInfo,
  }) {
    return updatePassword(oldPassword, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserProfile,
    TResult? Function()? updateDeviceToken,
    TResult? Function(String username, bool isResend, String? email)? sendOTP,
    TResult? Function(String oldPassword, String newPassword)? updatePassword,
    TResult? Function(String email, String otp)? verifyOTP,
    TResult? Function()? getUserProfileByUserId,
    TResult? Function(UpdateUserInfoRequest request)? updateUserInfo,
  }) {
    return updatePassword?.call(oldPassword, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserProfile,
    TResult Function()? updateDeviceToken,
    TResult Function(String username, bool isResend, String? email)? sendOTP,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(String email, String otp)? verifyOTP,
    TResult Function()? getUserProfileByUserId,
    TResult Function(UpdateUserInfoRequest request)? updateUserInfo,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(oldPassword, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetUserProfile value) getUserProfile,
    required TResult Function(_UpdateDeviceToken value) updateDeviceToken,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_GetUserProfileByUserId value)
    getUserProfileByUserId,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetUserProfile value)? getUserProfile,
    TResult? Function(_UpdateDeviceToken value)? updateDeviceToken,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_GetUserProfileByUserId value)? getUserProfileByUserId,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetUserProfile value)? getUserProfile,
    TResult Function(_UpdateDeviceToken value)? updateDeviceToken,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_GetUserProfileByUserId value)? getUserProfileByUserId,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class _UpdatePassword implements UserEvent {
  const factory _UpdatePassword({
    required final String oldPassword,
    required final String newPassword,
  }) = _$UpdatePasswordImpl;

  String get oldPassword;
  String get newPassword;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePasswordImplCopyWith<_$UpdatePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOTPImplCopyWith<$Res> {
  factory _$$VerifyOTPImplCopyWith(
    _$VerifyOTPImpl value,
    $Res Function(_$VerifyOTPImpl) then,
  ) = __$$VerifyOTPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String otp});
}

/// @nodoc
class __$$VerifyOTPImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$VerifyOTPImpl>
    implements _$$VerifyOTPImplCopyWith<$Res> {
  __$$VerifyOTPImplCopyWithImpl(
    _$VerifyOTPImpl _value,
    $Res Function(_$VerifyOTPImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? otp = null}) {
    return _then(
      _$VerifyOTPImpl(
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        otp:
            null == otp
                ? _value.otp
                : otp // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$VerifyOTPImpl implements _VerifyOTP {
  const _$VerifyOTPImpl({required this.email, required this.otp});

  @override
  final String email;
  @override
  final String otp;

  @override
  String toString() {
    return 'UserEvent.verifyOTP(email: $email, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOTPImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, otp);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOTPImplCopyWith<_$VerifyOTPImpl> get copyWith =>
      __$$VerifyOTPImplCopyWithImpl<_$VerifyOTPImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserProfile,
    required TResult Function() updateDeviceToken,
    required TResult Function(String username, bool isResend, String? email)
    sendOTP,
    required TResult Function(String oldPassword, String newPassword)
    updatePassword,
    required TResult Function(String email, String otp) verifyOTP,
    required TResult Function() getUserProfileByUserId,
    required TResult Function(UpdateUserInfoRequest request) updateUserInfo,
  }) {
    return verifyOTP(email, otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserProfile,
    TResult? Function()? updateDeviceToken,
    TResult? Function(String username, bool isResend, String? email)? sendOTP,
    TResult? Function(String oldPassword, String newPassword)? updatePassword,
    TResult? Function(String email, String otp)? verifyOTP,
    TResult? Function()? getUserProfileByUserId,
    TResult? Function(UpdateUserInfoRequest request)? updateUserInfo,
  }) {
    return verifyOTP?.call(email, otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserProfile,
    TResult Function()? updateDeviceToken,
    TResult Function(String username, bool isResend, String? email)? sendOTP,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(String email, String otp)? verifyOTP,
    TResult Function()? getUserProfileByUserId,
    TResult Function(UpdateUserInfoRequest request)? updateUserInfo,
    required TResult orElse(),
  }) {
    if (verifyOTP != null) {
      return verifyOTP(email, otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetUserProfile value) getUserProfile,
    required TResult Function(_UpdateDeviceToken value) updateDeviceToken,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_GetUserProfileByUserId value)
    getUserProfileByUserId,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
  }) {
    return verifyOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetUserProfile value)? getUserProfile,
    TResult? Function(_UpdateDeviceToken value)? updateDeviceToken,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_GetUserProfileByUserId value)? getUserProfileByUserId,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
  }) {
    return verifyOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetUserProfile value)? getUserProfile,
    TResult Function(_UpdateDeviceToken value)? updateDeviceToken,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_GetUserProfileByUserId value)? getUserProfileByUserId,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    required TResult orElse(),
  }) {
    if (verifyOTP != null) {
      return verifyOTP(this);
    }
    return orElse();
  }
}

abstract class _VerifyOTP implements UserEvent {
  const factory _VerifyOTP({
    required final String email,
    required final String otp,
  }) = _$VerifyOTPImpl;

  String get email;
  String get otp;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOTPImplCopyWith<_$VerifyOTPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserProfileByUserIdImplCopyWith<$Res> {
  factory _$$GetUserProfileByUserIdImplCopyWith(
    _$GetUserProfileByUserIdImpl value,
    $Res Function(_$GetUserProfileByUserIdImpl) then,
  ) = __$$GetUserProfileByUserIdImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserProfileByUserIdImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUserProfileByUserIdImpl>
    implements _$$GetUserProfileByUserIdImplCopyWith<$Res> {
  __$$GetUserProfileByUserIdImplCopyWithImpl(
    _$GetUserProfileByUserIdImpl _value,
    $Res Function(_$GetUserProfileByUserIdImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserProfileByUserIdImpl implements _GetUserProfileByUserId {
  const _$GetUserProfileByUserIdImpl();

  @override
  String toString() {
    return 'UserEvent.getUserProfileByUserId()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserProfileByUserIdImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserProfile,
    required TResult Function() updateDeviceToken,
    required TResult Function(String username, bool isResend, String? email)
    sendOTP,
    required TResult Function(String oldPassword, String newPassword)
    updatePassword,
    required TResult Function(String email, String otp) verifyOTP,
    required TResult Function() getUserProfileByUserId,
    required TResult Function(UpdateUserInfoRequest request) updateUserInfo,
  }) {
    return getUserProfileByUserId();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserProfile,
    TResult? Function()? updateDeviceToken,
    TResult? Function(String username, bool isResend, String? email)? sendOTP,
    TResult? Function(String oldPassword, String newPassword)? updatePassword,
    TResult? Function(String email, String otp)? verifyOTP,
    TResult? Function()? getUserProfileByUserId,
    TResult? Function(UpdateUserInfoRequest request)? updateUserInfo,
  }) {
    return getUserProfileByUserId?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserProfile,
    TResult Function()? updateDeviceToken,
    TResult Function(String username, bool isResend, String? email)? sendOTP,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(String email, String otp)? verifyOTP,
    TResult Function()? getUserProfileByUserId,
    TResult Function(UpdateUserInfoRequest request)? updateUserInfo,
    required TResult orElse(),
  }) {
    if (getUserProfileByUserId != null) {
      return getUserProfileByUserId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetUserProfile value) getUserProfile,
    required TResult Function(_UpdateDeviceToken value) updateDeviceToken,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_GetUserProfileByUserId value)
    getUserProfileByUserId,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
  }) {
    return getUserProfileByUserId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetUserProfile value)? getUserProfile,
    TResult? Function(_UpdateDeviceToken value)? updateDeviceToken,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_GetUserProfileByUserId value)? getUserProfileByUserId,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
  }) {
    return getUserProfileByUserId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetUserProfile value)? getUserProfile,
    TResult Function(_UpdateDeviceToken value)? updateDeviceToken,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_GetUserProfileByUserId value)? getUserProfileByUserId,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    required TResult orElse(),
  }) {
    if (getUserProfileByUserId != null) {
      return getUserProfileByUserId(this);
    }
    return orElse();
  }
}

abstract class _GetUserProfileByUserId implements UserEvent {
  const factory _GetUserProfileByUserId() = _$GetUserProfileByUserIdImpl;
}

/// @nodoc
abstract class _$$UpdateUserInfoImplCopyWith<$Res> {
  factory _$$UpdateUserInfoImplCopyWith(
    _$UpdateUserInfoImpl value,
    $Res Function(_$UpdateUserInfoImpl) then,
  ) = __$$UpdateUserInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateUserInfoRequest request});

  $UpdateUserInfoRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$UpdateUserInfoImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UpdateUserInfoImpl>
    implements _$$UpdateUserInfoImplCopyWith<$Res> {
  __$$UpdateUserInfoImplCopyWithImpl(
    _$UpdateUserInfoImpl _value,
    $Res Function(_$UpdateUserInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? request = null}) {
    return _then(
      _$UpdateUserInfoImpl(
        request:
            null == request
                ? _value.request
                : request // ignore: cast_nullable_to_non_nullable
                    as UpdateUserInfoRequest,
      ),
    );
  }

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateUserInfoRequestCopyWith<$Res> get request {
    return $UpdateUserInfoRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$UpdateUserInfoImpl implements _UpdateUserInfo {
  const _$UpdateUserInfoImpl({required this.request});

  @override
  final UpdateUserInfoRequest request;

  @override
  String toString() {
    return 'UserEvent.updateUserInfo(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserInfoImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserInfoImplCopyWith<_$UpdateUserInfoImpl> get copyWith =>
      __$$UpdateUserInfoImplCopyWithImpl<_$UpdateUserInfoImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserProfile,
    required TResult Function() updateDeviceToken,
    required TResult Function(String username, bool isResend, String? email)
    sendOTP,
    required TResult Function(String oldPassword, String newPassword)
    updatePassword,
    required TResult Function(String email, String otp) verifyOTP,
    required TResult Function() getUserProfileByUserId,
    required TResult Function(UpdateUserInfoRequest request) updateUserInfo,
  }) {
    return updateUserInfo(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserProfile,
    TResult? Function()? updateDeviceToken,
    TResult? Function(String username, bool isResend, String? email)? sendOTP,
    TResult? Function(String oldPassword, String newPassword)? updatePassword,
    TResult? Function(String email, String otp)? verifyOTP,
    TResult? Function()? getUserProfileByUserId,
    TResult? Function(UpdateUserInfoRequest request)? updateUserInfo,
  }) {
    return updateUserInfo?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserProfile,
    TResult Function()? updateDeviceToken,
    TResult Function(String username, bool isResend, String? email)? sendOTP,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(String email, String otp)? verifyOTP,
    TResult Function()? getUserProfileByUserId,
    TResult Function(UpdateUserInfoRequest request)? updateUserInfo,
    required TResult orElse(),
  }) {
    if (updateUserInfo != null) {
      return updateUserInfo(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetUserProfile value) getUserProfile,
    required TResult Function(_UpdateDeviceToken value) updateDeviceToken,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_GetUserProfileByUserId value)
    getUserProfileByUserId,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
  }) {
    return updateUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetUserProfile value)? getUserProfile,
    TResult? Function(_UpdateDeviceToken value)? updateDeviceToken,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_GetUserProfileByUserId value)? getUserProfileByUserId,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
  }) {
    return updateUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetUserProfile value)? getUserProfile,
    TResult Function(_UpdateDeviceToken value)? updateDeviceToken,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_GetUserProfileByUserId value)? getUserProfileByUserId,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    required TResult orElse(),
  }) {
    if (updateUserInfo != null) {
      return updateUserInfo(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserInfo implements UserEvent {
  const factory _UpdateUserInfo({
    required final UpdateUserInfoRequest request,
  }) = _$UpdateUserInfoImpl;

  UpdateUserInfoRequest get request;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserInfoImplCopyWith<_$UpdateUserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetUserProfileInProgressImplCopyWith<$Res> {
  factory _$$GetUserProfileInProgressImplCopyWith(
    _$GetUserProfileInProgressImpl value,
    $Res Function(_$GetUserProfileInProgressImpl) then,
  ) = __$$GetUserProfileInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserProfileInProgressImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$GetUserProfileInProgressImpl>
    implements _$$GetUserProfileInProgressImplCopyWith<$Res> {
  __$$GetUserProfileInProgressImplCopyWithImpl(
    _$GetUserProfileInProgressImpl _value,
    $Res Function(_$GetUserProfileInProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserProfileInProgressImpl implements _GetUserProfileInProgress {
  const _$GetUserProfileInProgressImpl();

  @override
  String toString() {
    return 'UserState.getUserProfileInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserProfileInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return getUserProfileInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return getUserProfileInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (getUserProfileInProgress != null) {
      return getUserProfileInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return getUserProfileInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return getUserProfileInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (getUserProfileInProgress != null) {
      return getUserProfileInProgress(this);
    }
    return orElse();
  }
}

abstract class _GetUserProfileInProgress implements UserState {
  const factory _GetUserProfileInProgress() = _$GetUserProfileInProgressImpl;
}

/// @nodoc
abstract class _$$GetUserProfileSuccessImplCopyWith<$Res> {
  factory _$$GetUserProfileSuccessImplCopyWith(
    _$GetUserProfileSuccessImpl value,
    $Res Function(_$GetUserProfileSuccessImpl) then,
  ) = __$$GetUserProfileSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName, String email});
}

/// @nodoc
class __$$GetUserProfileSuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$GetUserProfileSuccessImpl>
    implements _$$GetUserProfileSuccessImplCopyWith<$Res> {
  __$$GetUserProfileSuccessImplCopyWithImpl(
    _$GetUserProfileSuccessImpl _value,
    $Res Function(_$GetUserProfileSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userName = null, Object? email = null}) {
    return _then(
      _$GetUserProfileSuccessImpl(
        null == userName
            ? _value.userName
            : userName // ignore: cast_nullable_to_non_nullable
                as String,
        null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$GetUserProfileSuccessImpl implements _GetUserProfileSuccess {
  const _$GetUserProfileSuccessImpl(this.userName, this.email);

  @override
  final String userName;
  @override
  final String email;

  @override
  String toString() {
    return 'UserState.getUserProfileSuccess(userName: $userName, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserProfileSuccessImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, email);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserProfileSuccessImplCopyWith<_$GetUserProfileSuccessImpl>
  get copyWith =>
      __$$GetUserProfileSuccessImplCopyWithImpl<_$GetUserProfileSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return getUserProfileSuccess(userName, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return getUserProfileSuccess?.call(userName, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (getUserProfileSuccess != null) {
      return getUserProfileSuccess(userName, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return getUserProfileSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return getUserProfileSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (getUserProfileSuccess != null) {
      return getUserProfileSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetUserProfileSuccess implements UserState {
  const factory _GetUserProfileSuccess(
    final String userName,
    final String email,
  ) = _$GetUserProfileSuccessImpl;

  String get userName;
  String get email;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserProfileSuccessImplCopyWith<_$GetUserProfileSuccessImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserProfileFailureImplCopyWith<$Res> {
  factory _$$GetUserProfileFailureImplCopyWith(
    _$GetUserProfileFailureImpl value,
    $Res Function(_$GetUserProfileFailureImpl) then,
  ) = __$$GetUserProfileFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GetUserProfileFailureImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$GetUserProfileFailureImpl>
    implements _$$GetUserProfileFailureImplCopyWith<$Res> {
  __$$GetUserProfileFailureImplCopyWithImpl(
    _$GetUserProfileFailureImpl _value,
    $Res Function(_$GetUserProfileFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$GetUserProfileFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$GetUserProfileFailureImpl implements _GetUserProfileFailure {
  const _$GetUserProfileFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.getUserProfileFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserProfileFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserProfileFailureImplCopyWith<_$GetUserProfileFailureImpl>
  get copyWith =>
      __$$GetUserProfileFailureImplCopyWithImpl<_$GetUserProfileFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return getUserProfileFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return getUserProfileFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (getUserProfileFailure != null) {
      return getUserProfileFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return getUserProfileFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return getUserProfileFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (getUserProfileFailure != null) {
      return getUserProfileFailure(this);
    }
    return orElse();
  }
}

abstract class _GetUserProfileFailure implements UserState {
  const factory _GetUserProfileFailure(final String message) =
      _$GetUserProfileFailureImpl;

  String get message;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserProfileFailureImplCopyWith<_$GetUserProfileFailureImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetServerTimeInProgressImplCopyWith<$Res> {
  factory _$$GetServerTimeInProgressImplCopyWith(
    _$GetServerTimeInProgressImpl value,
    $Res Function(_$GetServerTimeInProgressImpl) then,
  ) = __$$GetServerTimeInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetServerTimeInProgressImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$GetServerTimeInProgressImpl>
    implements _$$GetServerTimeInProgressImplCopyWith<$Res> {
  __$$GetServerTimeInProgressImplCopyWithImpl(
    _$GetServerTimeInProgressImpl _value,
    $Res Function(_$GetServerTimeInProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetServerTimeInProgressImpl implements _GetServerTimeInProgress {
  const _$GetServerTimeInProgressImpl();

  @override
  String toString() {
    return 'UserState.getServerTimeInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetServerTimeInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return getServerTimeInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return getServerTimeInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (getServerTimeInProgress != null) {
      return getServerTimeInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return getServerTimeInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return getServerTimeInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (getServerTimeInProgress != null) {
      return getServerTimeInProgress(this);
    }
    return orElse();
  }
}

abstract class _GetServerTimeInProgress implements UserState {
  const factory _GetServerTimeInProgress() = _$GetServerTimeInProgressImpl;
}

/// @nodoc
abstract class _$$GetServerTimeSuccessImplCopyWith<$Res> {
  factory _$$GetServerTimeSuccessImplCopyWith(
    _$GetServerTimeSuccessImpl value,
    $Res Function(_$GetServerTimeSuccessImpl) then,
  ) = __$$GetServerTimeSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String serverTime});
}

/// @nodoc
class __$$GetServerTimeSuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$GetServerTimeSuccessImpl>
    implements _$$GetServerTimeSuccessImplCopyWith<$Res> {
  __$$GetServerTimeSuccessImplCopyWithImpl(
    _$GetServerTimeSuccessImpl _value,
    $Res Function(_$GetServerTimeSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? serverTime = null}) {
    return _then(
      _$GetServerTimeSuccessImpl(
        null == serverTime
            ? _value.serverTime
            : serverTime // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$GetServerTimeSuccessImpl implements _GetServerTimeSuccess {
  const _$GetServerTimeSuccessImpl(this.serverTime);

  @override
  final String serverTime;

  @override
  String toString() {
    return 'UserState.getServerTimeSuccess(serverTime: $serverTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetServerTimeSuccessImpl &&
            (identical(other.serverTime, serverTime) ||
                other.serverTime == serverTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serverTime);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetServerTimeSuccessImplCopyWith<_$GetServerTimeSuccessImpl>
  get copyWith =>
      __$$GetServerTimeSuccessImplCopyWithImpl<_$GetServerTimeSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return getServerTimeSuccess(serverTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return getServerTimeSuccess?.call(serverTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (getServerTimeSuccess != null) {
      return getServerTimeSuccess(serverTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return getServerTimeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return getServerTimeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (getServerTimeSuccess != null) {
      return getServerTimeSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetServerTimeSuccess implements UserState {
  const factory _GetServerTimeSuccess(final String serverTime) =
      _$GetServerTimeSuccessImpl;

  String get serverTime;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetServerTimeSuccessImplCopyWith<_$GetServerTimeSuccessImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetServerTimeFailureImplCopyWith<$Res> {
  factory _$$GetServerTimeFailureImplCopyWith(
    _$GetServerTimeFailureImpl value,
    $Res Function(_$GetServerTimeFailureImpl) then,
  ) = __$$GetServerTimeFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GetServerTimeFailureImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$GetServerTimeFailureImpl>
    implements _$$GetServerTimeFailureImplCopyWith<$Res> {
  __$$GetServerTimeFailureImplCopyWithImpl(
    _$GetServerTimeFailureImpl _value,
    $Res Function(_$GetServerTimeFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$GetServerTimeFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$GetServerTimeFailureImpl implements _GetServerTimeFailure {
  const _$GetServerTimeFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.getServerTimeFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetServerTimeFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetServerTimeFailureImplCopyWith<_$GetServerTimeFailureImpl>
  get copyWith =>
      __$$GetServerTimeFailureImplCopyWithImpl<_$GetServerTimeFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return getServerTimeFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return getServerTimeFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (getServerTimeFailure != null) {
      return getServerTimeFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return getServerTimeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return getServerTimeFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (getServerTimeFailure != null) {
      return getServerTimeFailure(this);
    }
    return orElse();
  }
}

abstract class _GetServerTimeFailure implements UserState {
  const factory _GetServerTimeFailure(final String message) =
      _$GetServerTimeFailureImpl;

  String get message;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetServerTimeFailureImplCopyWith<_$GetServerTimeFailureImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDeviceTokenInProgressImplCopyWith<$Res> {
  factory _$$UpdateDeviceTokenInProgressImplCopyWith(
    _$UpdateDeviceTokenInProgressImpl value,
    $Res Function(_$UpdateDeviceTokenInProgressImpl) then,
  ) = __$$UpdateDeviceTokenInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateDeviceTokenInProgressImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UpdateDeviceTokenInProgressImpl>
    implements _$$UpdateDeviceTokenInProgressImplCopyWith<$Res> {
  __$$UpdateDeviceTokenInProgressImplCopyWithImpl(
    _$UpdateDeviceTokenInProgressImpl _value,
    $Res Function(_$UpdateDeviceTokenInProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateDeviceTokenInProgressImpl
    implements _UpdateDeviceTokenInProgress {
  const _$UpdateDeviceTokenInProgressImpl();

  @override
  String toString() {
    return 'UserState.updateDeviceTokenInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDeviceTokenInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return updateDeviceTokenInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return updateDeviceTokenInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (updateDeviceTokenInProgress != null) {
      return updateDeviceTokenInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return updateDeviceTokenInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return updateDeviceTokenInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (updateDeviceTokenInProgress != null) {
      return updateDeviceTokenInProgress(this);
    }
    return orElse();
  }
}

abstract class _UpdateDeviceTokenInProgress implements UserState {
  const factory _UpdateDeviceTokenInProgress() =
      _$UpdateDeviceTokenInProgressImpl;
}

/// @nodoc
abstract class _$$UpdateDeviceTokenSuccessImplCopyWith<$Res> {
  factory _$$UpdateDeviceTokenSuccessImplCopyWith(
    _$UpdateDeviceTokenSuccessImpl value,
    $Res Function(_$UpdateDeviceTokenSuccessImpl) then,
  ) = __$$UpdateDeviceTokenSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateDeviceTokenSuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UpdateDeviceTokenSuccessImpl>
    implements _$$UpdateDeviceTokenSuccessImplCopyWith<$Res> {
  __$$UpdateDeviceTokenSuccessImplCopyWithImpl(
    _$UpdateDeviceTokenSuccessImpl _value,
    $Res Function(_$UpdateDeviceTokenSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateDeviceTokenSuccessImpl implements _UpdateDeviceTokenSuccess {
  const _$UpdateDeviceTokenSuccessImpl();

  @override
  String toString() {
    return 'UserState.updateDeviceTokenSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDeviceTokenSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return updateDeviceTokenSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return updateDeviceTokenSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (updateDeviceTokenSuccess != null) {
      return updateDeviceTokenSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return updateDeviceTokenSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return updateDeviceTokenSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (updateDeviceTokenSuccess != null) {
      return updateDeviceTokenSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateDeviceTokenSuccess implements UserState {
  const factory _UpdateDeviceTokenSuccess() = _$UpdateDeviceTokenSuccessImpl;
}

/// @nodoc
abstract class _$$UpdateDeviceTokenFailureImplCopyWith<$Res> {
  factory _$$UpdateDeviceTokenFailureImplCopyWith(
    _$UpdateDeviceTokenFailureImpl value,
    $Res Function(_$UpdateDeviceTokenFailureImpl) then,
  ) = __$$UpdateDeviceTokenFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UpdateDeviceTokenFailureImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UpdateDeviceTokenFailureImpl>
    implements _$$UpdateDeviceTokenFailureImplCopyWith<$Res> {
  __$$UpdateDeviceTokenFailureImplCopyWithImpl(
    _$UpdateDeviceTokenFailureImpl _value,
    $Res Function(_$UpdateDeviceTokenFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$UpdateDeviceTokenFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$UpdateDeviceTokenFailureImpl implements _UpdateDeviceTokenFailure {
  const _$UpdateDeviceTokenFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.updateDeviceTokenFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDeviceTokenFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDeviceTokenFailureImplCopyWith<_$UpdateDeviceTokenFailureImpl>
  get copyWith => __$$UpdateDeviceTokenFailureImplCopyWithImpl<
    _$UpdateDeviceTokenFailureImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return updateDeviceTokenFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return updateDeviceTokenFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (updateDeviceTokenFailure != null) {
      return updateDeviceTokenFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return updateDeviceTokenFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return updateDeviceTokenFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (updateDeviceTokenFailure != null) {
      return updateDeviceTokenFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateDeviceTokenFailure implements UserState {
  const factory _UpdateDeviceTokenFailure(final String message) =
      _$UpdateDeviceTokenFailureImpl;

  String get message;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDeviceTokenFailureImplCopyWith<_$UpdateDeviceTokenFailureImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendOTPInProgressImplCopyWith<$Res> {
  factory _$$SendOTPInProgressImplCopyWith(
    _$SendOTPInProgressImpl value,
    $Res Function(_$SendOTPInProgressImpl) then,
  ) = __$$SendOTPInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendOTPInProgressImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$SendOTPInProgressImpl>
    implements _$$SendOTPInProgressImplCopyWith<$Res> {
  __$$SendOTPInProgressImplCopyWithImpl(
    _$SendOTPInProgressImpl _value,
    $Res Function(_$SendOTPInProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendOTPInProgressImpl implements _SendOTPInProgress {
  const _$SendOTPInProgressImpl();

  @override
  String toString() {
    return 'UserState.sendOTPInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendOTPInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return sendOTPInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return sendOTPInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (sendOTPInProgress != null) {
      return sendOTPInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return sendOTPInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return sendOTPInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (sendOTPInProgress != null) {
      return sendOTPInProgress(this);
    }
    return orElse();
  }
}

abstract class _SendOTPInProgress implements UserState {
  const factory _SendOTPInProgress() = _$SendOTPInProgressImpl;
}

/// @nodoc
abstract class _$$SendOTPSuccessImplCopyWith<$Res> {
  factory _$$SendOTPSuccessImplCopyWith(
    _$SendOTPSuccessImpl value,
    $Res Function(_$SendOTPSuccessImpl) then,
  ) = __$$SendOTPSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendOTPSuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$SendOTPSuccessImpl>
    implements _$$SendOTPSuccessImplCopyWith<$Res> {
  __$$SendOTPSuccessImplCopyWithImpl(
    _$SendOTPSuccessImpl _value,
    $Res Function(_$SendOTPSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _$SendOTPSuccessImpl(
        null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$SendOTPSuccessImpl implements _SendOTPSuccess {
  const _$SendOTPSuccessImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'UserState.sendOTPSuccess(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOTPSuccessImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOTPSuccessImplCopyWith<_$SendOTPSuccessImpl> get copyWith =>
      __$$SendOTPSuccessImplCopyWithImpl<_$SendOTPSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return sendOTPSuccess(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return sendOTPSuccess?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (sendOTPSuccess != null) {
      return sendOTPSuccess(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return sendOTPSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return sendOTPSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (sendOTPSuccess != null) {
      return sendOTPSuccess(this);
    }
    return orElse();
  }
}

abstract class _SendOTPSuccess implements UserState {
  const factory _SendOTPSuccess(final String email) = _$SendOTPSuccessImpl;

  String get email;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendOTPSuccessImplCopyWith<_$SendOTPSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendOTPFailureImplCopyWith<$Res> {
  factory _$$SendOTPFailureImplCopyWith(
    _$SendOTPFailureImpl value,
    $Res Function(_$SendOTPFailureImpl) then,
  ) = __$$SendOTPFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SendOTPFailureImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$SendOTPFailureImpl>
    implements _$$SendOTPFailureImplCopyWith<$Res> {
  __$$SendOTPFailureImplCopyWithImpl(
    _$SendOTPFailureImpl _value,
    $Res Function(_$SendOTPFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$SendOTPFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$SendOTPFailureImpl implements _SendOTPFailure {
  const _$SendOTPFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.sendOTPFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOTPFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOTPFailureImplCopyWith<_$SendOTPFailureImpl> get copyWith =>
      __$$SendOTPFailureImplCopyWithImpl<_$SendOTPFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return sendOTPFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return sendOTPFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (sendOTPFailure != null) {
      return sendOTPFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return sendOTPFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return sendOTPFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (sendOTPFailure != null) {
      return sendOTPFailure(this);
    }
    return orElse();
  }
}

abstract class _SendOTPFailure implements UserState {
  const factory _SendOTPFailure(final String message) = _$SendOTPFailureImpl;

  String get message;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendOTPFailureImplCopyWith<_$SendOTPFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePasswordInProgressImplCopyWith<$Res> {
  factory _$$UpdatePasswordInProgressImplCopyWith(
    _$UpdatePasswordInProgressImpl value,
    $Res Function(_$UpdatePasswordInProgressImpl) then,
  ) = __$$UpdatePasswordInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatePasswordInProgressImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UpdatePasswordInProgressImpl>
    implements _$$UpdatePasswordInProgressImplCopyWith<$Res> {
  __$$UpdatePasswordInProgressImplCopyWithImpl(
    _$UpdatePasswordInProgressImpl _value,
    $Res Function(_$UpdatePasswordInProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdatePasswordInProgressImpl implements _UpdatePasswordInProgress {
  const _$UpdatePasswordInProgressImpl();

  @override
  String toString() {
    return 'UserState.updatePasswordInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePasswordInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return updatePasswordInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return updatePasswordInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (updatePasswordInProgress != null) {
      return updatePasswordInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return updatePasswordInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return updatePasswordInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (updatePasswordInProgress != null) {
      return updatePasswordInProgress(this);
    }
    return orElse();
  }
}

abstract class _UpdatePasswordInProgress implements UserState {
  const factory _UpdatePasswordInProgress() = _$UpdatePasswordInProgressImpl;
}

/// @nodoc
abstract class _$$UpdatePasswordSuccessImplCopyWith<$Res> {
  factory _$$UpdatePasswordSuccessImplCopyWith(
    _$UpdatePasswordSuccessImpl value,
    $Res Function(_$UpdatePasswordSuccessImpl) then,
  ) = __$$UpdatePasswordSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatePasswordSuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UpdatePasswordSuccessImpl>
    implements _$$UpdatePasswordSuccessImplCopyWith<$Res> {
  __$$UpdatePasswordSuccessImplCopyWithImpl(
    _$UpdatePasswordSuccessImpl _value,
    $Res Function(_$UpdatePasswordSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdatePasswordSuccessImpl implements _UpdatePasswordSuccess {
  const _$UpdatePasswordSuccessImpl();

  @override
  String toString() {
    return 'UserState.updatePasswordSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePasswordSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return updatePasswordSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return updatePasswordSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (updatePasswordSuccess != null) {
      return updatePasswordSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return updatePasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return updatePasswordSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (updatePasswordSuccess != null) {
      return updatePasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdatePasswordSuccess implements UserState {
  const factory _UpdatePasswordSuccess() = _$UpdatePasswordSuccessImpl;
}

/// @nodoc
abstract class _$$UpdatePasswordFailureImplCopyWith<$Res> {
  factory _$$UpdatePasswordFailureImplCopyWith(
    _$UpdatePasswordFailureImpl value,
    $Res Function(_$UpdatePasswordFailureImpl) then,
  ) = __$$UpdatePasswordFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UpdatePasswordFailureImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UpdatePasswordFailureImpl>
    implements _$$UpdatePasswordFailureImplCopyWith<$Res> {
  __$$UpdatePasswordFailureImplCopyWithImpl(
    _$UpdatePasswordFailureImpl _value,
    $Res Function(_$UpdatePasswordFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$UpdatePasswordFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$UpdatePasswordFailureImpl implements _UpdatePasswordFailure {
  const _$UpdatePasswordFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.updatePasswordFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePasswordFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePasswordFailureImplCopyWith<_$UpdatePasswordFailureImpl>
  get copyWith =>
      __$$UpdatePasswordFailureImplCopyWithImpl<_$UpdatePasswordFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return updatePasswordFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return updatePasswordFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (updatePasswordFailure != null) {
      return updatePasswordFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return updatePasswordFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return updatePasswordFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (updatePasswordFailure != null) {
      return updatePasswordFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdatePasswordFailure implements UserState {
  const factory _UpdatePasswordFailure(final String message) =
      _$UpdatePasswordFailureImpl;

  String get message;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePasswordFailureImplCopyWith<_$UpdatePasswordFailureImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOTPInProgressImplCopyWith<$Res> {
  factory _$$VerifyOTPInProgressImplCopyWith(
    _$VerifyOTPInProgressImpl value,
    $Res Function(_$VerifyOTPInProgressImpl) then,
  ) = __$$VerifyOTPInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyOTPInProgressImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$VerifyOTPInProgressImpl>
    implements _$$VerifyOTPInProgressImplCopyWith<$Res> {
  __$$VerifyOTPInProgressImplCopyWithImpl(
    _$VerifyOTPInProgressImpl _value,
    $Res Function(_$VerifyOTPInProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VerifyOTPInProgressImpl implements _VerifyOTPInProgress {
  const _$VerifyOTPInProgressImpl();

  @override
  String toString() {
    return 'UserState.verifyOTPInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOTPInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return verifyOTPInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return verifyOTPInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (verifyOTPInProgress != null) {
      return verifyOTPInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return verifyOTPInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return verifyOTPInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (verifyOTPInProgress != null) {
      return verifyOTPInProgress(this);
    }
    return orElse();
  }
}

abstract class _VerifyOTPInProgress implements UserState {
  const factory _VerifyOTPInProgress() = _$VerifyOTPInProgressImpl;
}

/// @nodoc
abstract class _$$VerifyOTPSuccessImplCopyWith<$Res> {
  factory _$$VerifyOTPSuccessImplCopyWith(
    _$VerifyOTPSuccessImpl value,
    $Res Function(_$VerifyOTPSuccessImpl) then,
  ) = __$$VerifyOTPSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyOTPSuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$VerifyOTPSuccessImpl>
    implements _$$VerifyOTPSuccessImplCopyWith<$Res> {
  __$$VerifyOTPSuccessImplCopyWithImpl(
    _$VerifyOTPSuccessImpl _value,
    $Res Function(_$VerifyOTPSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VerifyOTPSuccessImpl implements _VerifyOTPSuccess {
  const _$VerifyOTPSuccessImpl();

  @override
  String toString() {
    return 'UserState.verifyOTPSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyOTPSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return verifyOTPSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return verifyOTPSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (verifyOTPSuccess != null) {
      return verifyOTPSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return verifyOTPSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return verifyOTPSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (verifyOTPSuccess != null) {
      return verifyOTPSuccess(this);
    }
    return orElse();
  }
}

abstract class _VerifyOTPSuccess implements UserState {
  const factory _VerifyOTPSuccess() = _$VerifyOTPSuccessImpl;
}

/// @nodoc
abstract class _$$VerifyOTPFailureImplCopyWith<$Res> {
  factory _$$VerifyOTPFailureImplCopyWith(
    _$VerifyOTPFailureImpl value,
    $Res Function(_$VerifyOTPFailureImpl) then,
  ) = __$$VerifyOTPFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$VerifyOTPFailureImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$VerifyOTPFailureImpl>
    implements _$$VerifyOTPFailureImplCopyWith<$Res> {
  __$$VerifyOTPFailureImplCopyWithImpl(
    _$VerifyOTPFailureImpl _value,
    $Res Function(_$VerifyOTPFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$VerifyOTPFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$VerifyOTPFailureImpl implements _VerifyOTPFailure {
  const _$VerifyOTPFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.verifyOTPFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOTPFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOTPFailureImplCopyWith<_$VerifyOTPFailureImpl> get copyWith =>
      __$$VerifyOTPFailureImplCopyWithImpl<_$VerifyOTPFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return verifyOTPFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return verifyOTPFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (verifyOTPFailure != null) {
      return verifyOTPFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return verifyOTPFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return verifyOTPFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (verifyOTPFailure != null) {
      return verifyOTPFailure(this);
    }
    return orElse();
  }
}

abstract class _VerifyOTPFailure implements UserState {
  const factory _VerifyOTPFailure(final String message) =
      _$VerifyOTPFailureImpl;

  String get message;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOTPFailureImplCopyWith<_$VerifyOTPFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserProfileByUserIdInProgressImplCopyWith<$Res> {
  factory _$$GetUserProfileByUserIdInProgressImplCopyWith(
    _$GetUserProfileByUserIdInProgressImpl value,
    $Res Function(_$GetUserProfileByUserIdInProgressImpl) then,
  ) = __$$GetUserProfileByUserIdInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserProfileByUserIdInProgressImplCopyWithImpl<$Res>
    extends
        _$UserStateCopyWithImpl<$Res, _$GetUserProfileByUserIdInProgressImpl>
    implements _$$GetUserProfileByUserIdInProgressImplCopyWith<$Res> {
  __$$GetUserProfileByUserIdInProgressImplCopyWithImpl(
    _$GetUserProfileByUserIdInProgressImpl _value,
    $Res Function(_$GetUserProfileByUserIdInProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserProfileByUserIdInProgressImpl
    implements _GetUserProfileByUserIdInProgress {
  const _$GetUserProfileByUserIdInProgressImpl();

  @override
  String toString() {
    return 'UserState.getUserProfileByUserIdInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserProfileByUserIdInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return getUserProfileByUserIdInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return getUserProfileByUserIdInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (getUserProfileByUserIdInProgress != null) {
      return getUserProfileByUserIdInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return getUserProfileByUserIdInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return getUserProfileByUserIdInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (getUserProfileByUserIdInProgress != null) {
      return getUserProfileByUserIdInProgress(this);
    }
    return orElse();
  }
}

abstract class _GetUserProfileByUserIdInProgress implements UserState {
  const factory _GetUserProfileByUserIdInProgress() =
      _$GetUserProfileByUserIdInProgressImpl;
}

/// @nodoc
abstract class _$$GetUserProfileByUserIdSuccessImplCopyWith<$Res> {
  factory _$$GetUserProfileByUserIdSuccessImplCopyWith(
    _$GetUserProfileByUserIdSuccessImpl value,
    $Res Function(_$GetUserProfileByUserIdSuccessImpl) then,
  ) = __$$GetUserProfileByUserIdSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserDto userInfo});

  $UserDtoCopyWith<$Res> get userInfo;
}

/// @nodoc
class __$$GetUserProfileByUserIdSuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$GetUserProfileByUserIdSuccessImpl>
    implements _$$GetUserProfileByUserIdSuccessImplCopyWith<$Res> {
  __$$GetUserProfileByUserIdSuccessImplCopyWithImpl(
    _$GetUserProfileByUserIdSuccessImpl _value,
    $Res Function(_$GetUserProfileByUserIdSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userInfo = null}) {
    return _then(
      _$GetUserProfileByUserIdSuccessImpl(
        null == userInfo
            ? _value.userInfo
            : userInfo // ignore: cast_nullable_to_non_nullable
                as UserDto,
      ),
    );
  }

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get userInfo {
    return $UserDtoCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value));
    });
  }
}

/// @nodoc

class _$GetUserProfileByUserIdSuccessImpl
    implements _GetUserProfileByUserIdSuccess {
  const _$GetUserProfileByUserIdSuccessImpl(this.userInfo);

  @override
  final UserDto userInfo;

  @override
  String toString() {
    return 'UserState.getUserProfileByUserIdSuccess(userInfo: $userInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserProfileByUserIdSuccessImpl &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userInfo);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserProfileByUserIdSuccessImplCopyWith<
    _$GetUserProfileByUserIdSuccessImpl
  >
  get copyWith => __$$GetUserProfileByUserIdSuccessImplCopyWithImpl<
    _$GetUserProfileByUserIdSuccessImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return getUserProfileByUserIdSuccess(userInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return getUserProfileByUserIdSuccess?.call(userInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (getUserProfileByUserIdSuccess != null) {
      return getUserProfileByUserIdSuccess(userInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return getUserProfileByUserIdSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return getUserProfileByUserIdSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (getUserProfileByUserIdSuccess != null) {
      return getUserProfileByUserIdSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetUserProfileByUserIdSuccess implements UserState {
  const factory _GetUserProfileByUserIdSuccess(final UserDto userInfo) =
      _$GetUserProfileByUserIdSuccessImpl;

  UserDto get userInfo;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserProfileByUserIdSuccessImplCopyWith<
    _$GetUserProfileByUserIdSuccessImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserProfileByUserIdFailureImplCopyWith<$Res> {
  factory _$$GetUserProfileByUserIdFailureImplCopyWith(
    _$GetUserProfileByUserIdFailureImpl value,
    $Res Function(_$GetUserProfileByUserIdFailureImpl) then,
  ) = __$$GetUserProfileByUserIdFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GetUserProfileByUserIdFailureImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$GetUserProfileByUserIdFailureImpl>
    implements _$$GetUserProfileByUserIdFailureImplCopyWith<$Res> {
  __$$GetUserProfileByUserIdFailureImplCopyWithImpl(
    _$GetUserProfileByUserIdFailureImpl _value,
    $Res Function(_$GetUserProfileByUserIdFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$GetUserProfileByUserIdFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$GetUserProfileByUserIdFailureImpl
    implements _GetUserProfileByUserIdFailure {
  const _$GetUserProfileByUserIdFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.getUserProfileByUserIdFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserProfileByUserIdFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserProfileByUserIdFailureImplCopyWith<
    _$GetUserProfileByUserIdFailureImpl
  >
  get copyWith => __$$GetUserProfileByUserIdFailureImplCopyWithImpl<
    _$GetUserProfileByUserIdFailureImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return getUserProfileByUserIdFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return getUserProfileByUserIdFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (getUserProfileByUserIdFailure != null) {
      return getUserProfileByUserIdFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return getUserProfileByUserIdFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return getUserProfileByUserIdFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (getUserProfileByUserIdFailure != null) {
      return getUserProfileByUserIdFailure(this);
    }
    return orElse();
  }
}

abstract class _GetUserProfileByUserIdFailure implements UserState {
  const factory _GetUserProfileByUserIdFailure(final String message) =
      _$GetUserProfileByUserIdFailureImpl;

  String get message;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserProfileByUserIdFailureImplCopyWith<
    _$GetUserProfileByUserIdFailureImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserInfoInProgressImplCopyWith<$Res> {
  factory _$$UpdateUserInfoInProgressImplCopyWith(
    _$UpdateUserInfoInProgressImpl value,
    $Res Function(_$UpdateUserInfoInProgressImpl) then,
  ) = __$$UpdateUserInfoInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUserInfoInProgressImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UpdateUserInfoInProgressImpl>
    implements _$$UpdateUserInfoInProgressImplCopyWith<$Res> {
  __$$UpdateUserInfoInProgressImplCopyWithImpl(
    _$UpdateUserInfoInProgressImpl _value,
    $Res Function(_$UpdateUserInfoInProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateUserInfoInProgressImpl implements _UpdateUserInfoInProgress {
  const _$UpdateUserInfoInProgressImpl();

  @override
  String toString() {
    return 'UserState.updateUserInfoInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserInfoInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return updateUserInfoInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return updateUserInfoInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (updateUserInfoInProgress != null) {
      return updateUserInfoInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return updateUserInfoInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return updateUserInfoInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (updateUserInfoInProgress != null) {
      return updateUserInfoInProgress(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserInfoInProgress implements UserState {
  const factory _UpdateUserInfoInProgress() = _$UpdateUserInfoInProgressImpl;
}

/// @nodoc
abstract class _$$UpdateUserInfoSuccessImplCopyWith<$Res> {
  factory _$$UpdateUserInfoSuccessImplCopyWith(
    _$UpdateUserInfoSuccessImpl value,
    $Res Function(_$UpdateUserInfoSuccessImpl) then,
  ) = __$$UpdateUserInfoSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUserInfoSuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UpdateUserInfoSuccessImpl>
    implements _$$UpdateUserInfoSuccessImplCopyWith<$Res> {
  __$$UpdateUserInfoSuccessImplCopyWithImpl(
    _$UpdateUserInfoSuccessImpl _value,
    $Res Function(_$UpdateUserInfoSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateUserInfoSuccessImpl implements _UpdateUserInfoSuccess {
  const _$UpdateUserInfoSuccessImpl();

  @override
  String toString() {
    return 'UserState.updateUserInfoSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserInfoSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return updateUserInfoSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return updateUserInfoSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (updateUserInfoSuccess != null) {
      return updateUserInfoSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return updateUserInfoSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return updateUserInfoSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (updateUserInfoSuccess != null) {
      return updateUserInfoSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserInfoSuccess implements UserState {
  const factory _UpdateUserInfoSuccess() = _$UpdateUserInfoSuccessImpl;
}

/// @nodoc
abstract class _$$UpdateUserInfoFailureImplCopyWith<$Res> {
  factory _$$UpdateUserInfoFailureImplCopyWith(
    _$UpdateUserInfoFailureImpl value,
    $Res Function(_$UpdateUserInfoFailureImpl) then,
  ) = __$$UpdateUserInfoFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UpdateUserInfoFailureImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UpdateUserInfoFailureImpl>
    implements _$$UpdateUserInfoFailureImplCopyWith<$Res> {
  __$$UpdateUserInfoFailureImplCopyWithImpl(
    _$UpdateUserInfoFailureImpl _value,
    $Res Function(_$UpdateUserInfoFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$UpdateUserInfoFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$UpdateUserInfoFailureImpl implements _UpdateUserInfoFailure {
  const _$UpdateUserInfoFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.updateUserInfoFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserInfoFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserInfoFailureImplCopyWith<_$UpdateUserInfoFailureImpl>
  get copyWith =>
      __$$UpdateUserInfoFailureImplCopyWithImpl<_$UpdateUserInfoFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserProfileInProgress,
    required TResult Function(String userName, String email)
    getUserProfileSuccess,
    required TResult Function(String message) getUserProfileFailure,
    required TResult Function() getServerTimeInProgress,
    required TResult Function(String serverTime) getServerTimeSuccess,
    required TResult Function(String message) getServerTimeFailure,
    required TResult Function() updateDeviceTokenInProgress,
    required TResult Function() updateDeviceTokenSuccess,
    required TResult Function(String message) updateDeviceTokenFailure,
    required TResult Function() sendOTPInProgress,
    required TResult Function(String email) sendOTPSuccess,
    required TResult Function(String message) sendOTPFailure,
    required TResult Function() updatePasswordInProgress,
    required TResult Function() updatePasswordSuccess,
    required TResult Function(String message) updatePasswordFailure,
    required TResult Function() verifyOTPInProgress,
    required TResult Function() verifyOTPSuccess,
    required TResult Function(String message) verifyOTPFailure,
    required TResult Function() getUserProfileByUserIdInProgress,
    required TResult Function(UserDto userInfo) getUserProfileByUserIdSuccess,
    required TResult Function(String message) getUserProfileByUserIdFailure,
    required TResult Function() updateUserInfoInProgress,
    required TResult Function() updateUserInfoSuccess,
    required TResult Function(String message) updateUserInfoFailure,
  }) {
    return updateUserInfoFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserProfileInProgress,
    TResult? Function(String userName, String email)? getUserProfileSuccess,
    TResult? Function(String message)? getUserProfileFailure,
    TResult? Function()? getServerTimeInProgress,
    TResult? Function(String serverTime)? getServerTimeSuccess,
    TResult? Function(String message)? getServerTimeFailure,
    TResult? Function()? updateDeviceTokenInProgress,
    TResult? Function()? updateDeviceTokenSuccess,
    TResult? Function(String message)? updateDeviceTokenFailure,
    TResult? Function()? sendOTPInProgress,
    TResult? Function(String email)? sendOTPSuccess,
    TResult? Function(String message)? sendOTPFailure,
    TResult? Function()? updatePasswordInProgress,
    TResult? Function()? updatePasswordSuccess,
    TResult? Function(String message)? updatePasswordFailure,
    TResult? Function()? verifyOTPInProgress,
    TResult? Function()? verifyOTPSuccess,
    TResult? Function(String message)? verifyOTPFailure,
    TResult? Function()? getUserProfileByUserIdInProgress,
    TResult? Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult? Function(String message)? getUserProfileByUserIdFailure,
    TResult? Function()? updateUserInfoInProgress,
    TResult? Function()? updateUserInfoSuccess,
    TResult? Function(String message)? updateUserInfoFailure,
  }) {
    return updateUserInfoFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserProfileInProgress,
    TResult Function(String userName, String email)? getUserProfileSuccess,
    TResult Function(String message)? getUserProfileFailure,
    TResult Function()? getServerTimeInProgress,
    TResult Function(String serverTime)? getServerTimeSuccess,
    TResult Function(String message)? getServerTimeFailure,
    TResult Function()? updateDeviceTokenInProgress,
    TResult Function()? updateDeviceTokenSuccess,
    TResult Function(String message)? updateDeviceTokenFailure,
    TResult Function()? sendOTPInProgress,
    TResult Function(String email)? sendOTPSuccess,
    TResult Function(String message)? sendOTPFailure,
    TResult Function()? updatePasswordInProgress,
    TResult Function()? updatePasswordSuccess,
    TResult Function(String message)? updatePasswordFailure,
    TResult Function()? verifyOTPInProgress,
    TResult Function()? verifyOTPSuccess,
    TResult Function(String message)? verifyOTPFailure,
    TResult Function()? getUserProfileByUserIdInProgress,
    TResult Function(UserDto userInfo)? getUserProfileByUserIdSuccess,
    TResult Function(String message)? getUserProfileByUserIdFailure,
    TResult Function()? updateUserInfoInProgress,
    TResult Function()? updateUserInfoSuccess,
    TResult Function(String message)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (updateUserInfoFailure != null) {
      return updateUserInfoFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetUserProfileInProgress value)
    getUserProfileInProgress,
    required TResult Function(_GetUserProfileSuccess value)
    getUserProfileSuccess,
    required TResult Function(_GetUserProfileFailure value)
    getUserProfileFailure,
    required TResult Function(_GetServerTimeInProgress value)
    getServerTimeInProgress,
    required TResult Function(_GetServerTimeSuccess value) getServerTimeSuccess,
    required TResult Function(_GetServerTimeFailure value) getServerTimeFailure,
    required TResult Function(_UpdateDeviceTokenInProgress value)
    updateDeviceTokenInProgress,
    required TResult Function(_UpdateDeviceTokenSuccess value)
    updateDeviceTokenSuccess,
    required TResult Function(_UpdateDeviceTokenFailure value)
    updateDeviceTokenFailure,
    required TResult Function(_SendOTPInProgress value) sendOTPInProgress,
    required TResult Function(_SendOTPSuccess value) sendOTPSuccess,
    required TResult Function(_SendOTPFailure value) sendOTPFailure,
    required TResult Function(_UpdatePasswordInProgress value)
    updatePasswordInProgress,
    required TResult Function(_UpdatePasswordSuccess value)
    updatePasswordSuccess,
    required TResult Function(_UpdatePasswordFailure value)
    updatePasswordFailure,
    required TResult Function(_VerifyOTPInProgress value) verifyOTPInProgress,
    required TResult Function(_VerifyOTPSuccess value) verifyOTPSuccess,
    required TResult Function(_VerifyOTPFailure value) verifyOTPFailure,
    required TResult Function(_GetUserProfileByUserIdInProgress value)
    getUserProfileByUserIdInProgress,
    required TResult Function(_GetUserProfileByUserIdSuccess value)
    getUserProfileByUserIdSuccess,
    required TResult Function(_GetUserProfileByUserIdFailure value)
    getUserProfileByUserIdFailure,
    required TResult Function(_UpdateUserInfoInProgress value)
    updateUserInfoInProgress,
    required TResult Function(_UpdateUserInfoSuccess value)
    updateUserInfoSuccess,
    required TResult Function(_UpdateUserInfoFailure value)
    updateUserInfoFailure,
  }) {
    return updateUserInfoFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetUserProfileInProgress value)?
    getUserProfileInProgress,
    TResult? Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult? Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult? Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult? Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult? Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult? Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult? Function(_UpdateDeviceTokenSuccess value)?
    updateDeviceTokenSuccess,
    TResult? Function(_UpdateDeviceTokenFailure value)?
    updateDeviceTokenFailure,
    TResult? Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult? Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult? Function(_SendOTPFailure value)? sendOTPFailure,
    TResult? Function(_UpdatePasswordInProgress value)?
    updatePasswordInProgress,
    TResult? Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult? Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult? Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult? Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult? Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult? Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult? Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult? Function(_UpdateUserInfoInProgress value)?
    updateUserInfoInProgress,
    TResult? Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult? Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
  }) {
    return updateUserInfoFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetUserProfileInProgress value)? getUserProfileInProgress,
    TResult Function(_GetUserProfileSuccess value)? getUserProfileSuccess,
    TResult Function(_GetUserProfileFailure value)? getUserProfileFailure,
    TResult Function(_GetServerTimeInProgress value)? getServerTimeInProgress,
    TResult Function(_GetServerTimeSuccess value)? getServerTimeSuccess,
    TResult Function(_GetServerTimeFailure value)? getServerTimeFailure,
    TResult Function(_UpdateDeviceTokenInProgress value)?
    updateDeviceTokenInProgress,
    TResult Function(_UpdateDeviceTokenSuccess value)? updateDeviceTokenSuccess,
    TResult Function(_UpdateDeviceTokenFailure value)? updateDeviceTokenFailure,
    TResult Function(_SendOTPInProgress value)? sendOTPInProgress,
    TResult Function(_SendOTPSuccess value)? sendOTPSuccess,
    TResult Function(_SendOTPFailure value)? sendOTPFailure,
    TResult Function(_UpdatePasswordInProgress value)? updatePasswordInProgress,
    TResult Function(_UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(_UpdatePasswordFailure value)? updatePasswordFailure,
    TResult Function(_VerifyOTPInProgress value)? verifyOTPInProgress,
    TResult Function(_VerifyOTPSuccess value)? verifyOTPSuccess,
    TResult Function(_VerifyOTPFailure value)? verifyOTPFailure,
    TResult Function(_GetUserProfileByUserIdInProgress value)?
    getUserProfileByUserIdInProgress,
    TResult Function(_GetUserProfileByUserIdSuccess value)?
    getUserProfileByUserIdSuccess,
    TResult Function(_GetUserProfileByUserIdFailure value)?
    getUserProfileByUserIdFailure,
    TResult Function(_UpdateUserInfoInProgress value)? updateUserInfoInProgress,
    TResult Function(_UpdateUserInfoSuccess value)? updateUserInfoSuccess,
    TResult Function(_UpdateUserInfoFailure value)? updateUserInfoFailure,
    required TResult orElse(),
  }) {
    if (updateUserInfoFailure != null) {
      return updateUserInfoFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserInfoFailure implements UserState {
  const factory _UpdateUserInfoFailure(final String message) =
      _$UpdateUserInfoFailureImpl;

  String get message;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserInfoFailureImplCopyWith<_$UpdateUserInfoFailureImpl>
  get copyWith => throw _privateConstructorUsedError;
}
