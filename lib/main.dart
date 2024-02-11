import 'package:flutter/material.dart';
import 'appbar/titlebar.dart';
import 'body/bodycontainer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const TitleBar(),
        body: BodyContainer(),
      ),
    );
  }
}
