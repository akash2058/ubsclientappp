import 'package:flutter/material.dart';

class MyPackagescreen extends StatelessWidget {
  const MyPackagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: 200,
          width: 500,
          child: Card(
            margin: EdgeInsets.all(20),
            color: Colors.blue[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text('Private Company registration'),
              ],
            ),
          ),
        ));
  }
}
