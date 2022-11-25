import 'package:flutter/material.dart';
import 'package:ubsprofessional/screens/login/models.dart';

class MyHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: (() {}),
          child: Icon(Icons.home),
          backgroundColor: Colors.grey,
          foregroundColor: Colors.deepOrange,
          elevation: 0,
        ),
        body: New(),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 5.0,
          shape: CircularNotchedRectangle(),
          color: Color.fromARGB(255, 204, 168, 156),
          child: SizedBox(
            height: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.auto_awesome),
                    ),
                    Text(
                      "Expetise",
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.history),
                    ),
                    Text(
                      "History",
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.check_box_outline_blank),
                      color: Colors.transparent,
                    ),
                    Text(
                      "Post",
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bar_chart),
                    ),
                    Text(
                      "Analytics",
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                    ),
                    Text(
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
