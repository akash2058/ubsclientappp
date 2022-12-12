import 'package:flutter/material.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Column(
          children: [
            CircleAvatar(),
            Text('Are you Sure you want to login out?')
          ],
        ),
      ),
    ));
  }
}
