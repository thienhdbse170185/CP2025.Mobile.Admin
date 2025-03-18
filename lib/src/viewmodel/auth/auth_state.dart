part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.loginInProgress() = _LoginInProgress;
  const factory AuthState.loginSuccess() = _LoginSuccess;
  const factory AuthState.loginFailure(String message) = _LoginFailure;

  const factory AuthState.logoutInProgress() = _LogoutInProgress;
  const factory AuthState.logoutSuccess() = _LogoutSuccess;
  const factory AuthState.logoutFailure(String message) = _LogoutFailure;
}
