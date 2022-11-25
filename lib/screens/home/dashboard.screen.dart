import 'package:flutter/material.dart';
import 'package:ubsprofessional/screens/home/expertise/expertise.screen.dart';
import 'package:ubsprofessional/screens/home/history/history.screen.dart';
import 'package:ubsprofessional/screens/home/post/post.screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Widget currentDashboardPage = const ExpertisePage();

  @override
  void initState() {
    super.initState();
    currentDashboardPage = const ExpertisePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            setState(() {
              currentDashboardPage = const PostPage();
            });
          }),
          backgroundColor: Colors.grey,
          foregroundColor: Colors.deepOrange,
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
                          currentDashboardPage = ExpertisePage();
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
                          currentDashboardPage = HistoryPage();
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
                          currentDashboardPage = const PostPage();
                        });
                      },
                      icon: const Icon(Icons.check_box_outline_blank),
                      color: Colors.transparent,
                    ),
                    const Text(
                      "Post",
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
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
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                    ),
                    const Text(
                      "user",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
