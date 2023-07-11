import 'dart:async';

mixin BlocMixin<STATE>{
  Stream<STATE> get stream;
  StreamSink<STATE> get sink;

  void dispose(){
    sink.close();
  }
}