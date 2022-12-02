import 'package:flutter/material.dart';
import 'package:ubsclient/screens/home/analytics/analytics.screen.dart';
import 'package:ubsclient/screens/home/dashboard/dashboard.page.dart';
import 'package:ubsclient/screens/home/expertise/expertise.screen.dart';
import 'package:ubsclient/screens/home/analytics/analytics.screen.dart';
import 'package:ubsclient/screens/home/history/history.screen.dart';
import 'package:ubsclient/screens/home/more/more.screen.dart';
import 'package:ubsclient/screens/home/expertise/expertise.screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Widget currentDashboardPage = DashboardPage();

  @override
  void initState() {
    super.initState();
    // currentDashboardPage = UserPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            setState(() {
              currentDashboardPage = const DashboardPage();
            });
          }),
          backgroundColor: Colors.grey,
          splashColor: Colors.red,
          elevation: 0,
          child: const Icon(Icons.home),
        ),
        body: currentDashboardPage,
        bottomNavigationBar: BottomAppBar(
          notchMargin: 5.0,
          shape: const CircularNotchedRectangle(),
          color: const Color.fromARGB(255, 204, 168, 156),
          child: SizedBox(
            height: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentDashboardPage = expertisepage();
                        });
                      },
                      icon: const Icon(Icons.auto_awesome),
                    ),
                    const Text(
                      "Expetise",
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentDashboardPage = const Historypage();
                        });
                      },
                      icon: const Icon(Icons.history),
                    ),
                    const Text(
                      "History",
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          // currentDashboardPage = Historypage();
                        });
                      },
                      icon: const Icon(Icons.check_box_outline_blank),
                      color: Colors.transparent,
                    ),
                    const Text(
                      "Dashboard",
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentDashboardPage = Analytics();
                        });
                      },
                      icon: const Icon(Icons.bar_chart),
                    ),
                    const Text(
                      "Analytics",
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentDashboardPage = const moreset();
                        });
                      },
                      icon: const Icon(Icons.menu),
                    ),
                    const Text(
                      "more",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
