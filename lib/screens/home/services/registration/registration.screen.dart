// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ubsclient/screens/home/services/registration/registration.card.dart';
import 'package:http/http.dart' as http;

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text('Registration'),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              RegistrationCard(
                title: "Private Company Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Up to 10 Shareholder",
                      amount: "8000",
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '68',
                          service: 'Registrations',
                          serviceID: '79',
                        );
                      }),
                  RegistrationServiceDetail(
                      title: "Above 10 Shareholder",
                      amount: "8500",
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '68',
                          service: 'Registrations',
                          serviceID: '78',
                        );
                      }),
                ],
              ),
              RegistrationCard(
                title: "Public Company Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Fee",
                      amount: "17000",
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '68',
                          service: 'Registrations',
                          serviceID: '3',
                        );
                      }),
                ],
              ),
              RegistrationCard(
                title: "Not for Profit Company Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Fee",
                      amount: "25,000",
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '68',
                          service: 'Registrations',
                          serviceID: '1',
                        );
                      }),
                ],
              ),
              RegistrationCard(
                title: "NGO Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Fee",
                      amount: "30,000",
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '68',
                          service: 'Registrations',
                          serviceID: '80',
                        );
                      }),
                ],
              ),
              RegistrationCard(
                title: "Udhyog Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Fee",
                      amount: "20,000",
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '68',
                          service: 'Registrations',
                          serviceID: '64',
                        );
                      }),
                ],
              ),
              RegistrationCard(
                title: "Gharelu Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Fee",
                      amount: "8,000",
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '68',
                          service: 'Registrations',
                          serviceID: '63',
                        );
                      }),
                ],
              ),
              RegistrationCard(
                title: "Banijya Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Fee",
                      amount: "10,000",
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '68',
                          service: 'Registrations',
                          serviceID: '65',
                        );
                      }),
                ],
              ),
              RegistrationCard(
                title: "PAN/VAT Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Fee",
                      amount: "3,500",
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '68',
                          service: 'Registrations',
                          serviceID: '4',
                        );
                      }),
                ],
              ),
              RegistrationCard(
                title: "Ward Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Starting Form",
                      amount: "5,000",
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '68',
                          service: 'Registrations',
                          serviceID: '60',
                        );
                      }),
                ],
              ),
              RegistrationCard(
                title: "Exim Code Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Fee",
                      amount: "5,000",
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '68',
                          service: 'Registrations',
                          serviceID: '81',
                        );
                      }),
                ],
              ),
              RegistrationCard(
                title: "Samajik Suraksha Kosh Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Employer:",
                      amount: "5,000",
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '68',
                          service: 'Registrations',
                          serviceID: '82',
                        );
                      }),
                  RegistrationServiceDetail(
                      title: "Per Employee:",
                      amount: "250",
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '68',
                          service: 'Registrations',
                          serviceID: '82',
                        );
                      }),
                  RegistrationServiceDetail(
                      title: "(if less than 4 employee,Minimum):",
                      amount: "1,000",
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '68',
                          service: 'Registrations',
                          serviceID: '82',
                        );
                      }),
                ],
              ),
              RegistrationCard(
                title: "Liquidation/De-registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Starting Form",
                      amount: "40,000",
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '68',
                          service: 'Registrations',
                          serviceID: '27',
                        );
                      }),
                ],
              ),
              RegistrationCard(
                title: "Trademark Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Starting Form",
                      amount: "25,000",
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '68',
                          service: 'Registrations',
                          serviceID: '83',
                        );
                      }),
                ],
              ),
              RegistrationCard(
                title: "Patent and Design Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Starting Form",
                      amount: "50,000",
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '68',
                          service: 'Registrations',
                          serviceID: '84',
                        );
                      }),
                ],
              ),
              RegistrationCard(
                title: "Copyright Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Starting From",
                      amount: "25,000",
                      onTap: () {
                        callRemoteService(
                          context,
                          parentServiceID: '68',
                          service: 'Registrations',
                          serviceID: '85',
                        );
                      }),
                ],
              ),
            ],
          ),
        ));
  }
}
