/////////////////COUNTER APP
import 'package:assistantapp/main_BuildLayout.dart';
import 'package:flutter/material.dart';

import 'pages/counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CounterPage());
  }
}
