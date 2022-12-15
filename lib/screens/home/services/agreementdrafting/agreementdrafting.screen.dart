import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import 'agreementdrafting.card.dart';

class AgreementdraftingScreen extends StatelessWidget {
  const AgreementdraftingScreen({super.key});
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
          elevation: 10,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          title: const Text(
            'Agreement Drafting',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              AgreementdraftingCard(
                title: "Employement Contract",
                serviceDetailCards: [
                  AgreementdraftingServiceDetail(
                    title: "Per Contract",
                    amount: "500",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '70',
                        service: 'Agreement Drafting',
                        serviceID: '101',
                      );
                    },
                  ),
                ],
              ),
              AgreementdraftingCard(
                title: "Legal Notices",
                serviceDetailCards: [
                  AgreementdraftingServiceDetail(
                    title: "Starting From",
                    amount: "3000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '70',
                        service: 'Agreement Drafting',
                        serviceID: '105',
                      );
                    },
                  ),
                ],
              ),
              AgreementdraftingCard(
                title: "Rent Agreement",
                serviceDetailCards: [
                  AgreementdraftingServiceDetail(
                    title: "per Agreement",
                    amount: "3000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '70',
                        service: 'Agreement Drafting',
                        serviceID: '102',
                      );
                    },
                  ),
                ],
              ),
              AgreementdraftingCard(
                title: "Power of Attorney",
                serviceDetailCards: [
                  AgreementdraftingServiceDetail(
                    title: "Starting From",
                    amount: "3000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '70',
                        service: 'Agreement Drafting',
                        serviceID: '103',
                      );
                    },
                  ),
                ],
              ),
              AgreementdraftingCard(
                title: "Special Agreement Drafting",
                serviceDetailCards: [
                  AgreementdraftingServiceDetail(
                    title: "Starting From",
                    amount: "3000",
                    onTap: () {
                      callRemoteService(
                        context,
                        parentServiceID: '70',
                        service: 'Agreement Drafting',
                        serviceID: '104',
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
