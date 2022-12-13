import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ubsclient/screens/home/services/compliance/compliance.card.dart';

class ComplianceScreen extends StatelessWidget {
  const ComplianceScreen({super.key});

  Future<void> callRemoteService(BuildContext context,
      {required String serviceID,
      required String parentServiceID,
      required String service}) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: const Text('Confirm??'),
          actions: [
            TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: const Text("Continue"),
              onPressed: () async {
                Navigator.pop(context);

                try {
                  final SharedPreferences sharedPreferences =
                      await SharedPreferences.getInstance();
                  String user = sharedPreferences.getInt('user').toString();
                  String name = sharedPreferences.getString('fullname') ?? "";
                  String email = sharedPreferences.getString('email') ?? "";
                  String phone = sharedPreferences.getString('phoneno') ?? "";
                  http.Response response = await http.post(
                      Uri.parse(
                          'https://api.ubs.com.np/index.php?method=add_app_request'),
                      body: {
                        user,
                        name,
                        email,
                        phone,
                        serviceID,
                        parentServiceID,
                        service
                      });
                  var responseData = jsonDecode(response.body.toString());

                  if (responseData["response"] == "success") {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: const Text('Success'),
                          actions: [
                            TextButton(
                              child: const Text("OK"),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    throw Exception(responseData["response"]);
                  }
                } catch (e) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: const Text('Failed'),
                        actions: [
                          TextButton(
                            child: const Text("OK"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Compliance'),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ComplianceCard(
                title: "Three Month's Return of Company",
                serviceDetailCards: [
                  ComplianceServiceDetail(
                    title: "Fee",
                    amount: "2500",
                    onTap: () {},
                  ),
                ],
              ),
              ComplianceCard(
                title: "Annual Return",
                serviceDetailCards: [
                  ComplianceServiceDetail(
                    title: "Annual Return of Private",
                    amount: "6000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '26',
                        service: '',
                        serviceID: '44',
                      );
                    },
                  ),
                  ComplianceServiceDetail(
                    title: "Annual Return of Public",
                    amount: "6000",
                    onTap: () {},
                  ),
                  ComplianceServiceDetail(
                    title: "Annual Return of Not for Profit",
                    amount: "6000",
                    onTap: () {},
                  ),
                  ComplianceServiceDetail(
                    title: "Annual Return of Foreign Company/Branch",
                    amount: "6000",
                    onTap: () {},
                  ),
                ],
              ),
              ComplianceCard(
                title: "Share Lagat",
                serviceDetailCards: [
                  ComplianceServiceDetail(
                    title: "Old Company",
                    amount: "12000",
                    onTap: () {},
                  ),
                  ComplianceServiceDetail(
                    title: "New Company",
                    amount: "15000",
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
