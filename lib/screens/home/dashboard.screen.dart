import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:ubsclient/screens/home/analytics/package.screen.dart';
import 'package:ubsclient/screens/home/dashboard/activekaam.dart';
import 'package:ubsclient/screens/home/Documnent/Services.screen.dart';
import 'package:ubsclient/screens/home/history/history.screen.dart';
import 'package:ubsclient/screens/home/more/more.screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Widget currentDashboardPage = const ServicesScreen();
  String currentDashboardPageTitle = "Services";

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
            IconButton(
              onPressed: (() {
                Navigator.pushNamed(context, '/notification');
              }),
              icon: Badge(
                  ignorePointer: true,
                  badgeColor: Colors.red,
                  badgeContent: Text('0'),
                  child: Icon(Icons.notifications)),
            )
          ],
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent[20],
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
          backgroundColor: Colors.blue[200],
          splashColor: Colors.redAccent,
          elevation: 0,
          child: const Icon(Icons.home),
        ),
        body: currentDashboardPage,
        bottomNavigationBar: BottomAppBar(
          notchMargin: 1.0,
          shape: const CircularNotchedRectangle(),
          color: Colors.blue[200],
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
                          currentDashboardPageTitle = 'Services';
                          currentDashboardPage = const ServicesScreen();
                        });
                      },
                      icon: const Icon(Icons.date_range),
                    ),
                    const Text(
                      "Services",
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
                          currentDashboardPage = const MoreScreen();
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
