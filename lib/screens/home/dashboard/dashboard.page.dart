import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ubsclient/models/Analytics.model.dart';
import 'package:ubsclient/screens/home/dashboard/tab.1.dart';
import 'package:ubsclient/screens/home/dashboard/tab2.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Pending Approval',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              Tab(
                child: Text('Active Kaam',
                    style: TextStyle(fontSize: 18, color: Colors.black)),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: (() {}),
                icon: Icon(
                  Icons.notification_add,
                  color: Colors.black,
                ))
          ],
          backgroundColor: Colors.white,
          title: Text(
            "Dashboard",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            firstpage(),
            secondpage(),
          ],
        ),
      ),
    );
  }
}
