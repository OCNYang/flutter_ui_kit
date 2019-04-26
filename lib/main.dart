import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/uikit.dart';
import 'splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.brown,
      ),
      home: UIKitPage(),
    );
  }
}


