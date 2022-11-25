import 'package:flutter/material.dart';
import 'package:ubsprofessional/screens/login/data.dart';

class New extends StatelessWidget {
  const New({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: data(),
      appBar: AppBar(
        title: Text("Post"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
    );
  }
}
