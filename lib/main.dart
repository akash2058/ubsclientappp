import 'package:flutter/material.dart';
import 'package:ubsprofessional/screens/home/dashboard.screen.dart';
import 'package:ubsprofessional/screens/login/login.screen.dart';
import 'package:ubsprofessional/screens/login/loginapi.dart';
import 'package:ubsprofessional/screens/signup/signup.screen.dart';

import 'package:ubsprofessional/models/comment.models.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      '/login': (context) =>  LoginScreen(),
      '/signup': (context) =>  Signup(),
      '/dashboard': (context) => DashboardScreen(),
      // '/post': (context) => New(),

    },
  ));
}
