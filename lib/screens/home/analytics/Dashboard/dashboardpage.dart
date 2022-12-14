import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: TabBar(
        labelColor: Colors.black,
        tabs: [Tab(text: 'Active Page'), Tab(text: 'Packages')],
      ),
    );
  }
}
