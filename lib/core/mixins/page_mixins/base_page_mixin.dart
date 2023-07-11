import 'package:flutter/material.dart';

mixin BasePageMixin<PAGE extends StatefulWidget> on State<PAGE>{


Widget body(BuildContext context);

String get title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: body(context),
    );
  }
}