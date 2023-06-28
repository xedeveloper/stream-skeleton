import 'package:flutter_test/flutter_test.dart';
import 'package:stream_skeleton/features/api_call_demo/bloc/demo_api_bloc.dart';
import 'package:stream_skeleton/features/api_call_demo/bloc/demo_api_state.dart';

void main() {
  group(
    'group: api call demo test cases',
    () {
      DemoApiBloc demoBlock = DemoApiBloc();
      test(
        'test: check test emits for demo_api_bloc',
        () {
          demoBlock.initiateNetworkCall();
          expectLater(
            demoBlock.stream,
            emitsInOrder(
              [
                isInstanceOf<DemoApiStateLoading>(),
                isInstanceOf<DemoApiStateLoaded>(),
              ],
            ),
          );
        },
      );
    },
  );
}
