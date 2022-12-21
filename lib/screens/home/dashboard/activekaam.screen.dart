import 'package:flutter/material.dart';

class ActivekaamPage extends StatelessWidget {
  const ActivekaamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image(height: 130, image: AssetImage('assets/images/dark-data.png')),
      Center(
          child: Text(
        'No Active Added Yet',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ))
    ]));
  }
}
