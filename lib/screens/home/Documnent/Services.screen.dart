import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        children: const [
          Image(
            image: AssetImage('assets/images/pack.jpg'),
          ),
          Image(image: AssetImage('assets/images/pack.jpg')),
          Image(image: AssetImage('assets/images/pack.jpg')),
          Image(image: AssetImage('assets/images/pack.jpg')),
          Image(image: AssetImage('assets/images/pack.jpg')),
          Image(image: AssetImage('assets/images/pack.jpg')),
          Image(image: AssetImage('assets/images/pack.jpg')),
          Image(image: AssetImage('assets/images/pack.jpg')),
        ],
      ),
    );
  }
}
