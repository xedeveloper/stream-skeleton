import 'dart:async';

import 'package:stream_skeleton/features/api_call_demo/bloc/demo_api_state.dart';

class DemoApiBloc {
  final StreamController<DemoApiState> _apiController =
      StreamController<DemoApiState>();

  Stream<DemoApiState> get stream {
    return _apiController.stream;
  }

  StreamSink<DemoApiState> get sink {
    return _apiController.sink;
  }

  void initiateNetworkCall() {
    sink.add(DemoApiState.loading());
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        sink.add(
          DemoApiState.loaded("Hello"),
        );
      },
    );
  }

  void dispose() {
    _apiController.close();
  }
}
