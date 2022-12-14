import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No Active Kaam',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    );
  }
}
