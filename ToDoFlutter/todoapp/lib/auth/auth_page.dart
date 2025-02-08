import 'package:flutter/material.dart';
import 'package:todoapp/screen/Signup.dart';
import 'package:todoapp/screen/login.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool authFlag = true;
  void to() {
    setState(() {
      authFlag = !authFlag;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (authFlag) {
      return LogIN_Screen(to);
    } else {
      return SignUp_Screen(to);
    }
  }
}
