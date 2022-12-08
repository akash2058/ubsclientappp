import 'package:flutter/material.dart';

class DocumentScreen extends StatelessWidget {
  const DocumentScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: [
            const Text(
              '      Read info  ',
              style: TextStyle(color: Colors.blue),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.info,
                  color: Colors.blue,
                ))
          ],
        ),
      ],
    ));
  }
}
