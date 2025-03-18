part of 'system_bloc.dart';

@freezed
class SystemState with _$SystemState {
  const factory SystemState.initial() = _Initial;

  const factory SystemState.appStartedInProgress() = _AppStartedInProgress;
  const factory SystemState.appStartedSuccess() = _AppStartedSuccess;
  const factory SystemState.appStartedFailure(String message) =
      _AppStartedFailure;

  const factory SystemState.setupOnAppStartInProgress() =
      _SetupOnAppStartInProgress;
  const factory SystemState.setupOnAppStartSuccess() = _SetupOnAppStartSuccess;
  const factory SystemState.setupOnAppStartFailure(String message) =
      _SetupOnAppStartFailure;
}
