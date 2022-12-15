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
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          title: const Text(
            'Compliance',
            style: TextStyle(color: Colors.black),
          ),
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
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '69',
                        service: 'Compliance',
                        serviceID: '58',
                      );
                    },
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
                        parentServiceID: '69',
                        service: 'Compliance',
                        serviceID: '44',
                      );
                    },
                  ),
                  ComplianceServiceDetail(
                    title: "Annual Return of Public",
                    amount: "6000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '69',
                        service: 'Compliance',
                        serviceID: '7',
                      );
                    },
                  ),
                  ComplianceServiceDetail(
                    title: "Annual Return of Not for Profit",
                    amount: "6000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '69',
                        service: 'Compliance',
                        serviceID: '16',
                      );
                    },
                  ),
                  ComplianceServiceDetail(
                    title: "Annual Return of Foreign Company/Branch",
                    amount: "6000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '69',
                        service: 'Compliance',
                        serviceID: '34',
                      );
                    },
                  ),
                ],
              ),
              ComplianceCard(
                title: "Share Lagat",
                serviceDetailCards: [
                  ComplianceServiceDetail(
                    title: "Old Company",
                    amount: "12000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '69',
                        service: 'Compliance',
                        serviceID: '86',
                      );
                    },
                  ),
                  ComplianceServiceDetail(
                    title: "New Company",
                    amount: "15000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '69',
                        service: 'Compliance',
                        serviceID: '87',
                      );
                    },
                  ),
                ],
              ),
              ComplianceCard(
                title: "Amendment works related to Company",
                serviceDetailCards: [
                  ComplianceServiceDetail(
                    title: "Name Change",
                    amount: "8,500",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '69',
                        service: 'Compliance',
                        serviceID: '91',
                      );
                    },
                  ),
                  ComplianceServiceDetail(
                    title: "Address Change",
                    amount: "8,500",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '69',
                        service: 'Compliance',
                        serviceID: '90',
                      );
                    },
                  ),
                  ComplianceServiceDetail(
                    title: "Capital Change",
                    amount: "8,500",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '69',
                        service: 'Compliance',
                        serviceID: '92',
                      );
                    },
                  ),
                  ComplianceServiceDetail(
                    title: "Objective Change",
                    amount: "8,500",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '69',
                        service: 'Compliance',
                        serviceID: '93',
                      );
                    },
                  ),
                  ComplianceServiceDetail(
                    title: "Change in Shareholder",
                    amount: "8,500",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '69',
                        service: 'Compliance',
                        serviceID: '94',
                      );
                    },
                  ),
                ],
              ),
              ComplianceCard(
                title: "Sakha Kayam/Thausari at IRD",
                serviceDetailCards: [
                  ComplianceServiceDetail(
                    title: "Fee",
                    amount: "3,500",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '69',
                        service: 'Compliance',
                        serviceID: '88',
                      );
                    },
                  ),
                ],
              ),
              ComplianceCard(
                title: "Adhyawadik Letter",
                serviceDetailCards: [
                  ComplianceServiceDetail(
                    title: "Adhyawadik Letter of Private",
                    amount: "4,000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '69',
                        service: 'Compliance',
                        serviceID: '97',
                      );
                    },
                  ),
                  ComplianceServiceDetail(
                    title: "Adhyawadik Letter of Public",
                    amount: "8,000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '69',
                        service: 'Compliance',
                        serviceID: '98',
                      );
                    },
                  ),
                  ComplianceServiceDetail(
                    title: "Adhyawadik Letter of Not for Profit",
                    amount: "4,000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '69',
                        service: 'Compliance',
                        serviceID: '99',
                      );
                    },
                  ),
                  ComplianceServiceDetail(
                    title: "Adhyawadik Letter of Foreign Company/Branch",
                    amount: "5,000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '69',
                        service: 'Compliance',
                        serviceID: '100',
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
