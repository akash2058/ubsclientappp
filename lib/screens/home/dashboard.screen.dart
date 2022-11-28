

import 'package:flutter/material.dart';
import 'package:ubsprofessional/screens/home/analytics/analytic.screen.dart';
import 'package:ubsprofessional/screens/home/expertise/expertise.screen.dart';
import 'package:ubsprofessional/screens/home/history/history.dart';

import 'package:ubsprofessional/screens/home/post/post.screen.dart';
import 'package:ubsprofessional/screens/home/user/user.screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Widget currentDashboardPage =  ExpertisePage();

  @override
  void initState() {
    super.initState();
    currentDashboardPage =  ExpertisePage();
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
                          currentDashboardPage =  ExpertisePage();
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
                          currentDashboardPage = const PhotoPage();
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
                          currentDashboardPage = const PhotoPage();
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
                      onPressed: () {
                        setState(() {
                          currentDashboardPage = const CommentPage();
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
                          currentDashboardPage = const UserPage();
                        });
                      },
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
