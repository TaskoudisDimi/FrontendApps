import 'package:flutter/material.dart';
import 'package:todoapp/screen/home.dart';
import 'package:todoapp/screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogIN_Screen(),
    );
  }
}
