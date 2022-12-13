import 'package:flutter/material.dart';
import 'package:ubsclient/screens/home/services/registration/registration.card.dart';

import 'agreementdraftingcardscreen.dart';

class AgreementdraftingScreen extends StatelessWidget {
  const AgreementdraftingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Agreement Drafting'),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: const [
              AgreementdraftingCard(
                title: "Employement Contract",
                serviceDetailCards: [
                  AgreementdraftingServiceDetail(
                      title: "Per Contract", amount: "500"),
                ],
              ),
              AgreementdraftingCard(
                title: "Legal Notices",
                serviceDetailCards: [
                  AgreementdraftingServiceDetail(
                      title: "Starting From", amount: "3000"),
                ],
              ),
              AgreementdraftingCard(
                title: "Legal Notices",
                serviceDetailCards: [
                  AgreementdraftingServiceDetail(
                      title: "Starting From", amount: "3000"),
                ],
              ),
              AgreementdraftingCard(
                title: "Rent Agreement ",
                serviceDetailCards: [
                  AgreementdraftingServiceDetail(
                      title: "per Agreement", amount: "3000"),
                ],
              ),
              AgreementdraftingCard(
                title: "Power of Attorney",
                serviceDetailCards: [
                  AgreementdraftingServiceDetail(
                      title: "Starting From", amount: "3000"),
                ],
              ),
              AgreementdraftingCard(
                title: "Special Agreement Drafting",
                serviceDetailCards: [
                  AgreementdraftingServiceDetail(
                      title: "Starting From", amount: "3000"),
                ],
              ),
            ],
          ),
        ));
  }
}
