import 'package:flutter/material.dart';
import 'package:todoapp/auth/auth_page.dart';
import 'package:todoapp/screen/Signup.dart';
import 'package:todoapp/screen/home.dart';
import 'package:todoapp/screen/login.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }
}
