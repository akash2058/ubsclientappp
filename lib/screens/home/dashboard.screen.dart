import 'package:flutter/material.dart';
import 'package:ubsclient/screens/home/analytics/analytics.screen.dart';
import 'package:ubsclient/screens/home/dashboard/activekaam.dart';
import 'package:ubsclient/screens/home/Documnent/Document.screen.dart';
import 'package:ubsclient/screens/home/analytics/analytics.screen.dart';
import 'package:ubsclient/screens/home/history/history.screen.dart';
import 'package:ubsclient/screens/home/more/more.screen.dart';
import 'package:ubsclient/screens/home/Documnent/Document.screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Widget currentDashboardPage = Documentpage();
  String currentDashboardPageTitle = "Documnents";

  @override
  void initState() {
    super.initState();
    // currentDashboardPage = UserPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: (() {}), icon: Icon(Icons.notification_add))
          ],
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
          title: Text("$currentDashboardPageTitle"),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            setState(() {
              currentDashboardPageTitle = "Active Kaam";
              currentDashboardPage = Activepage();
            });
          }),
          backgroundColor: Colors.blueGrey,
          splashColor: Colors.deepPurpleAccent,
          elevation: 0,
          child: const Icon(Icons.home),
        ),
        body: currentDashboardPage,
        bottomNavigationBar: BottomAppBar(
          notchMargin: 5.0,
          shape: const CircularNotchedRectangle(),
          color: Colors.blueGrey,
          child: SizedBox(
            height: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      highlightColor: Colors.deepPurpleAccent,
                      onPressed: () {
                        setState(() {
                          currentDashboardPageTitle = 'Documents';
                          currentDashboardPage = Documentpage();
                        });
                      },
                      icon: const Icon(Icons.date_range),
                    ),
                    const Text(
                      "Documents",
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      highlightColor: Colors.deepPurpleAccent,
                      onPressed: () {
                        setState(() {
                          currentDashboardPageTitle = "History";
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
                      highlightColor: Colors.deepPurpleAccent,
                      onPressed: () {
                        setState(() {
                          // currentDashboardPage = Historypage();
                        });
                      },
                      icon: const Icon(Icons.check_box_outline_blank),
                      color: Colors.transparent,
                    ),
                    const Text(
                      "Active Kaam ",
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      highlightColor: Colors.deepPurpleAccent,
                      onPressed: () {
                        setState(() {
                          currentDashboardPageTitle = "My Packages";
                          currentDashboardPage = MyPackagescreen();
                        });
                      },
                      icon: const Icon(Icons.card_giftcard),
                    ),
                    const Text(
                      "My Packages",
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      highlightColor: Colors.deepPurpleAccent,
                      onPressed: () {
                        setState(() {
                          currentDashboardPageTitle = "Profile & Settings";
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
