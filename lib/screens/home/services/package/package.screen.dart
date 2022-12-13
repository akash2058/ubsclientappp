import 'package:flutter/material.dart';
import 'package:ubsclient/screens/home/services/registration/registration.card.dart';

import 'package.card.dart';

class PackageScreen extends StatelessWidget {
  const PackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Special Package'),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: const [
              PackageCard(
                title: "SME",
                serviceDetailCards: [
                  PackageServiceDetail(title: "Starting From", amount: "8000"),
                ],
              ),
              PackageCard(
                title: "Retainership",
                serviceDetailCards: [
                  PackageServiceDetail(title: "Starting Form", amount: "17000"),
                ],
              ),
              PackageCard(
                title: "Registration Package",
                serviceDetailCards: [
                  PackageServiceDetail(
                      title: "i) Private Company Registration:",
                      amount: "17000"),
                  PackageServiceDetail(
                      title: "ii)SPAN/VAT Registration:", amount: "17000"),
                  PackageServiceDetail(
                      title: "iii)Ward Registration", amount: "17000"),
                ],
              ),
            ],
          ),
        ));
  }
}
