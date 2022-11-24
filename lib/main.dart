import 'package:flutter/material.dart';
import 'package:ubsprofessional/screens/login/login.screen.dart';
import 'package:ubsprofessional/screens/signup/signup.screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      '/login': (context) => const LoginScreen(),
      '/signup': (context) => const SignupScreen(),
    },
  ));
}

