part of 'system_bloc.dart';

@freezed
class SystemEvent with _$SystemEvent {
  const factory SystemEvent.started() = _Started;

  const factory SystemEvent.setupOnAppStart() = _SetupOnAppStart;
  const factory SystemEvent.appStarted() = _AppStarted;

  const factory SystemEvent.getServerTime() = _GetServerTime;
}
