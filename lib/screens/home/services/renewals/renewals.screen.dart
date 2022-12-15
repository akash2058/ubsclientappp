import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ubsclient/screens/home/services/renewals/renewals.card.dart';

class RenewalScreen extends StatelessWidget {
  const RenewalScreen({super.key});

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
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Renewals',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              RenewalCard(
                title: "Exim Code Renewals",
                serviceDetailCards: [
                  RenevalsServiceDetail(
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '72',
                          service: 'Renewals',
                          serviceID: '109',
                        );
                      },
                      title: "Starting From",
                      amount: "8000"),
                ],
              ),
              RenewalCard(
                title: "Banijya Renewals",
                serviceDetailCards: [
                  RenevalsServiceDetail(
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '72',
                          service: 'Renewals',
                          serviceID: '110',
                        );
                      },
                      title: "Fee",
                      amount: "17000"),
                ],
              ),
              RenewalCard(
                title: "Gharelu Renewals",
                serviceDetailCards: [
                  RenevalsServiceDetail(
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '72',
                          service: 'Renewals',
                          serviceID: '111',
                        );
                      },
                      title: "Fee",
                      amount: "17000"),
                ],
              ),
              RenewalCard(
                title: "Udhyog Renewals",
                serviceDetailCards: [
                  RenevalsServiceDetail(
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '72',
                          service: 'Renewals',
                          serviceID: '112',
                        );
                      },
                      title: "Fee",
                      amount: "17000"),
                ],
              ),
              RenewalCard(
                title: "Ward Renewals",
                serviceDetailCards: [
                  RenevalsServiceDetail(
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '72',
                          service: 'Renewals',
                          serviceID: '113',
                        );
                      },
                      title: "Fee",
                      amount: "17000"),
                ],
              ),
            ],
          ),
        ));
  }
}
