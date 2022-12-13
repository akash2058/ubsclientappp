import 'package:flutter/material.dart';
import 'package:ubsclient/screens/home/services/registration/registration.card.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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
            children: const [
              RegistrationCard(
                title: "Private Company Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Up to 10 Shareholder", amount: "8000"),
                  RegistrationServiceDetail(
                      title: "Above 10 Shareholder", amount: "8500"),
                ],
              ),
              RegistrationCard(
                title: "Public Company Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(title: "Fee", amount: "17000"),
                ],
              ),
              RegistrationCard(
                title: "Not for Profit Company Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(title: "Fee", amount: "17000"),
                ],
              ),
              RegistrationCard(
                title: "NGO Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(title: "Fee", amount: "17000"),
                ],
              ),
              RegistrationCard(
                title: "Udhyog Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(title: "Fee", amount: "17000"),
                ],
              ),
              RegistrationCard(
                title: "Gharelu Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(title: "Fee", amount: "17000"),
                ],
              ),
              RegistrationCard(
                title: "Banijya Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(title: "Fee", amount: "17000"),
                ],
              ),
              RegistrationCard(
                title: "PAN/VAT Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(title: "Fee", amount: "17000"),
                ],
              ),
              RegistrationCard(
                title: "Ward Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Starting Form", amount: "17000"),
                ],
              ),
              RegistrationCard(
                title: "Exim Code Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(title: "Fee", amount: "17000"),
                ],
              ),
              RegistrationCard(
                title: "Samajik Suraksha Kosh Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Employer:", amount: "17000"),
                  RegistrationServiceDetail(
                      title: "Per Employee:", amount: "17000"),
                  RegistrationServiceDetail(
                      title: "(if less than 4 employee,Minimum):",
                      amount: "17000"),
                ],
              ),
              RegistrationCard(
                title: "Liquidation/De-registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Starting Form", amount: "17000"),
                ],
              ),
              RegistrationCard(
                title: "Trademark Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Starting Form", amount: "17000"),
                ],
              ),
              RegistrationCard(
                title: "Patent and Design Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Starting Form", amount: "17000"),
                ],
              ),
              RegistrationCard(
                title: "Cpoyright Registration",
                serviceDetailCards: [
                  RegistrationServiceDetail(
                      title: "Starting From", amount: "17000"),
                ],
              ),
            ],
          ),
        ));
  }
}
