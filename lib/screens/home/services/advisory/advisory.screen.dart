import 'package:flutter/material.dart';
import 'package:ubsclient/screens/home/services/registration/registration.card.dart';

import 'advisory.card.dart';

class AdvisoryScreen extends StatelessWidget {
  const AdvisoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Advisory'),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: const [
              AdvisoryCard(
                title: "Company Secretary",
                serviceDetailCards: [
                  AdvisoryServiceDetail(title: "Per Month", amount: "8000"),
                ],
              ),
              AdvisoryCard(
                title: "FDI Consulting",
                serviceDetailCards: [
                  AdvisoryServiceDetail(
                      title: "Starting From", amount: "17000"),
                ],
              ),
              AdvisoryCard(
                title: "FDI Approval",
                serviceDetailCards: [
                  AdvisoryServiceDetail(
                      title: "Starting Form", amount: "17000"),
                ],
              ),
              AdvisoryCard(
                title: "Financial Consulting",
                serviceDetailCards: [
                  AdvisoryServiceDetail(title: "Per Hour", amount: "17000"),
                ],
              ),
              AdvisoryCard(
                title: "Corporate Law Consulting",
                serviceDetailCards: [
                  AdvisoryServiceDetail(title: "Per Hour", amount: "17000"),
                ],
              ),
            ],
          ),
        ));
  }
}
