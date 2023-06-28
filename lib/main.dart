import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:stream_skeleton/core/helpers/flavor_helper.dart';
import 'package:stream_skeleton/core/injection_handler.dart';
import 'package:stream_skeleton/features/api_call_demo/presentation/api_call_demo_page.dart';

final getIt = GetIt.asNewInstance();

void main() async {
  String flavor = await FlavorHelper.getApplicationFlavor() ?? Flavor.dev;
  configureInjections(flavor);
  await getIt.allReady();
  runApp(
    const StreamSkeleton(),
  );
}

/// Ignored for main App which initializes the project
// ignore: prefer-match-file-name
class StreamSkeleton extends StatelessWidget {
  const StreamSkeleton({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ),
          useMaterial3: true),
      home: APICallDemoPage(),
    );
  }
}
