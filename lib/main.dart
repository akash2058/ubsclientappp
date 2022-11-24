import 'package:flutter/material.dart';
import 'package:ubsprofessional/screens/login/login.screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      '/login': (context) => const LoginScreen(),
    },
  ));
}

