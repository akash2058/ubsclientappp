import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No Gallery',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
