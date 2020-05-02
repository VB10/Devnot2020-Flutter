import 'package:devnot/hello.dart';
import 'package:devnot/theme.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await Future.delayed(Duration(milliseconds: 500));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Devnot',
      theme: myTheme,
      home: HelloView(),
    );
  }
}
