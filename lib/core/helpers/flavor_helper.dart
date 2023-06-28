import 'package:flutter/services.dart';

class FlavorHelper {
  static Future<String?> getApplicationFlavor() async {
    return await MethodChannel('flavor').invokeMethod<String>(
      "getApplicationFlavor",
    );
  }
}

abstract class Flavor {
  static const dev = "dev";
  static const prod = "prod";
}
