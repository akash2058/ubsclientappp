import 'package:flutter/material.dart';
import 'package:ubsclient/screens/home/services/registration/registration.card.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Registration'),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: const [
              RegistrationCard(
                title: "Private Company Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(title: "Up to 10 Shareholder", amount: "8000"),
                  RegistrationServiceDetail(title: "Above 10 Shareholder", amount: "8500"),
                ],
              ),
              RegistrationCard(
                title: "Public Company Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(title: "Fee", amount: "17000"),
                ],
              ),
            ],
          ),
        ));
  }
}
