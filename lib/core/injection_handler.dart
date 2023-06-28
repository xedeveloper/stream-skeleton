import 'package:injectable/injectable.dart';
import 'package:stream_skeleton/main.dart';

import 'injection_handler.config.dart';

@InjectableInit()
void configureInjections(String environment) =>
    getIt.init(environment: environment);
