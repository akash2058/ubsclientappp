import 'package:flutter/material.dart';
import 'package:ubsclient/screens/home/dashboard/activekaam.screen.dart';
import 'package:ubsclient/screens/home/dashboard/mypackagescreen.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            bottom: TabBar(
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Active Kaam',
                ),
                Tab(
                  text: 'My Packages',
                ),
              ],
            )),
        body: TabBarView(children: [
          ActivekaamPage(),
          PackagePage(),
        ]),
      ),
    );
  }
}
