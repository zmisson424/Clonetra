import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants/strings.dart';
import 'views/root/index.dart';
import 'theme/light.dart';

void main() {

  // Set Status Bar Color
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ClonetraStrings.appName,
      theme: lightTheme,
      home: ClonetraRoot()
    );
  }
}