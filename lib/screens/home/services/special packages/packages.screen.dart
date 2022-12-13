import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ubsclient/screens/home/services/special packages/packages.card.dart';

class PackagesScreen extends StatelessWidget {
  const PackagesScreen({super.key});

  Future<void> callRemoteService(BuildContext context,
      {required String serviceID,
      required String parentServiceID,
      required String service}) async {
    await showDialog(
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
                showDialog(
                  context: context,
                  builder: (context) {
                    return const Dialog(
                      child: SizedBox(
                        height: 160,
                        width: 80,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    );
                  },
                );
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
                        "user": user,
                        "name": name,
                        "email": email,
                        "phone": phone,
                        "serviceID": serviceID,
                        "parentServiceID": parentServiceID,
                        "service": service,
                      });
                  var responseData = jsonDecode(response.body.toString());

                  if (responseData["response"] == "success") {
                    await showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Success'),
                                Text(responseData["message"])
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              child: const Text("OK"),
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.pop(context);
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
                  await showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text(e.toString()),
                        actions: [
                          TextButton(
                            child: const Text("OK"),
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pop(context);
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
          title: const Text('Packages'),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              PackagesCard(
                title: "Three Month's Return of Company",
                serviceDetailCards: [
                  PackagesServiceDetail(
                    title: "Fee",
                    amount: "2500",
                    onTap: () {},
                  ),
                ],
              ),
              PackagesCard(
                title: "SME",
                serviceDetailCards: [
                  PackagesServiceDetail(
                    title: "Starting From",
                    amount: "20,000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '75',
                        service: 'Packages',
                        serviceID: '129',
                      );
                    },
                  ),
                  PackagesServiceDetail(
                    title: "Annual Return of Public",
                    amount: "6000",
                    onTap: () {},
                  ),
                  PackagesServiceDetail(
                    title: "Annual Return of Not for Profit",
                    amount: "6000",
                    onTap: () {},
                  ),
                  PackagesServiceDetail(
                    title: "Annual Return of Foreign Company/Branch",
                    amount: "6000",
                    onTap: () {},
                  ),
                ],
              ),
              PackagesCard(
                title: "Share Lagat",
                serviceDetailCards: [
                  PackagesServiceDetail(
                    title: "Old Company",
                    amount: "12000",
                    onTap: () {},
                  ),
                  PackagesServiceDetail(
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
