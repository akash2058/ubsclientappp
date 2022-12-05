import 'package:flutter/material.dart';

class expertisepage extends StatelessWidget {
  const expertisepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: [
            Text(
              '      Read info  ',
              style: TextStyle(color: Colors.blue),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.info,
                  color: Colors.blue,
                ))
          ],
        ),
        Center(
          child: Image(image: AssetImage('assets/images/hh.png')),
        ),
        Center(
          child: Text(
            'You Have not added your client yet',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ],
    ));
  }
}
