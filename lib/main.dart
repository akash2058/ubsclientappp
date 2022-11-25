
import 'package:flutter/material.dart';
import 'package:ubsprofessional/comment_api.dart';
import 'package:ubsprofessional/screens/login/login.screen.dart';
import 'package:ubsprofessional/screens/signup/signup.screen.dart';
import 'package:ubsprofessional/http.dart';
import 'package:ubsprofessional/models/comments_model.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      '/login': (context) => const LoginScreen(),
      '/signup': (context) => const SignupScreen(),
      '/signin': (context) => MyApp(),
      '/reset' : (context) => HomePage(),
    },
  ));
}

