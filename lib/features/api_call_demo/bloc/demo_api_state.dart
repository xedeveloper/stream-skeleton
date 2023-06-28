import 'package:freezed_annotation/freezed_annotation.dart';

part 'demo_api_state.freezed.dart';

@freezed
class DemoApiState with _$DemoApiState {
  const factory DemoApiState() = _DemoApiState;
  const factory DemoApiState.initial() = DemoApiStateInitial;
  const factory DemoApiState.loading() = DemoApiStateLoading;
  const factory DemoApiState.loaded(String data) = DemoApiStateLoaded;
  const factory DemoApiState.error() = DemoApiStateError;
}
