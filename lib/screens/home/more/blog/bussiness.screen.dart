import 'package:flutter/material.dart';

class BussinessScreen extends StatelessWidget {
  const BussinessScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Bussiness',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(children: [
          Container(
            margin: EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
