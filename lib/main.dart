import 'package:flutter/material.dart';
import 'package:ubsprofessional/views/homepage.dart';


void main() {
  runApp(const Signup());
}

class Signup extends StatelessWidget {
  const Signup({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MySignup());
  }
}

class MySignup extends StatelessWidget {
  const MySignup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Flutter',
        theme:ThemeData(
          primarySwatch: Colors.blue,
        ),

        home:const  HomePage(),
    );
  }
}

