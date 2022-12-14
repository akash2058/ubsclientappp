import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ubsclient/screens/home/services/bank/bank.card.dart';
import 'package:http/http.dart' as http;

class BankScreen extends StatelessWidget {
  const BankScreen({super.key});
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
          title: const Text('Bank'),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              BankCard(
                title: "Projected Financial Statements",
                serviceDetailCards: [
                  BankDetail(
                    title: "upto 15 lacs",
                    amount: "8000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '77',
                        service: 'Bank Works',
                        serviceID: '50',
                      );
                    },
                  ),
                  BankDetail(
                    title: "15 lacs to 1 crore",
                    amount: "10000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '77',
                        service: 'Bank Works',
                        serviceID: '135',
                      );
                    },
                  ),
                  BankDetail(
                    title: "1 crore to 5 crore",
                    amount: "15000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '77',
                        service: 'Bank Works',
                        serviceID: '136',
                      );
                    },
                  ),
                  BankDetail(
                    title: "5 crore +",
                    amount: "18000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '70',
                        service: 'Bank Works',
                        serviceID: '139',
                      );
                    },
                  ),
                ],
              ),
              BankCard(
                title: "Provisional Financial Statements",
                serviceDetailCards: [
                  BankDetail(
                    title: "upto 15 lacs",
                    amount: "8000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '77',
                        service: 'Bank Works',
                        serviceID: '140',
                      );
                    },
                  ),
                  BankDetail(
                    title: "15 lacs to 1 crore",
                    amount: "10000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '77',
                        service: 'Bank Works',
                        serviceID: '137',
                      );
                    },
                  ),
                  BankDetail(
                    title: "1 crore to 5 crore",
                    amount: "15000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '77',
                        service: 'Bank Works',
                        serviceID: '138',
                      );
                    },
                  ),
                  BankDetail(
                    title: "5 crore +",
                    amount: "18000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '77',
                        service: 'Bank Works',
                        serviceID: '140',
                      );
                    },
                  ),
                ],
              ),
              BankCard(
                title: "Business Plans",
                serviceDetailCards: [
                  BankDetail(
                    title: "upto 15 lacs",
                    amount: "5000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '77',
                        service: 'Bank Works',
                        serviceID: '73',
                      );
                    },
                  ),
                  BankDetail(
                    title: "15 lacs to 1 crore",
                    amount: "5000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '77',
                        service: 'Bank Works',
                        serviceID: '114',
                      );
                    },
                  ),
                  BankDetail(
                    title: "1 crore to 5 crore",
                    amount: "8000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '73',
                        service: 'Bank Works',
                        serviceID: '114',
                      );
                    },
                  ),
                  BankDetail(
                    title: "5 crore +",
                    amount: "20000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '73',
                        service: 'Bank Works',
                        serviceID: '114',
                      );
                    },
                  ),
                ],
              ),
              BankCard(
                title: "Provisional and Projected",
                serviceDetailCards: [
                  BankDetail(
                    title: "upto 15 lacs",
                    amount: "13000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '73',
                        service: 'Bank Works',
                        serviceID: '114',
                      );
                    },
                  ),
                  BankDetail(
                    title: "15 lacs to 1 crore",
                    amount: "15000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '73',
                        service: 'Bank Works',
                        serviceID: '114',
                      );
                    },
                  ),
                  BankDetail(
                    title: "1 crore to 5 crore",
                    amount: "25000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '73',
                        service: 'Bank Works',
                        serviceID: '114',
                      );
                    },
                  ),
                  BankDetail(
                    title: "5 crore +",
                    amount: "28000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '73',
                        service: 'Bank Works',
                        serviceID: '114',
                      );
                    },
                  ),
                ],
              ),
              BankCard(
                title: "Projected, Provisional and Business Plans",
                serviceDetailCards: [
                  BankDetail(
                    title: "upto 15 lacs",
                    amount: "18000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '73',
                        service: 'Bank Works',
                        serviceID: '114',
                      );
                    },
                  ),
                  BankDetail(
                    title: "15 lacs to 1 crore",
                    amount: "23000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '73',
                        service: 'Bank Works',
                        serviceID: '114',
                      );
                    },
                  ),
                  BankDetail(
                    title: "1 crore to 5 crore",
                    amount: "33000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '73',
                        service: 'Bank Works',
                        serviceID: '114',
                      );
                    },
                  ),
                  BankDetail(
                    title: "5 crore +",
                    amount: "48000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '73',
                        service: 'Bank Works',
                        serviceID: '114',
                      );
                    },
                  ),
                ],
              ),
              BankCard(
                title: "Feasibility Reports",
                serviceDetailCards: [
                  BankDetail(
                    title: "Fee",
                    amount: "Starting from 25000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '77',
                        service: 'Bank Works',
                        serviceID: '137',
                      );
                    },
                  ),
                ],
              ),
              BankCard(
                title: "Financial Credibility Check",
                serviceDetailCards: [
                  BankDetail(
                    title: "Fee",
                    amount: "Starting from 15000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '77',
                        service: 'Bank Works',
                        serviceID: '138',
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
