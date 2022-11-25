import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:ubsprofessional/screens/login/dashboard.dart';
import 'package:ubsprofessional/screens/login/login.screen.dart';
import 'package:ubsprofessional/screens/login/models.dart';
import 'package:ubsprofessional/screens/login/data.dart';
import 'package:ubsprofessional/screens/login/models.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      '/login': (context) => const LoginScreen(),
      '/head': (context) => MyHead(),
      '/post': (context) => New(),
    },
  ));
}
