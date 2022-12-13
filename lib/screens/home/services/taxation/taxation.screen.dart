import 'package:flutter/material.dart';
import 'package:ubsclient/screens/home/services/taxation/taxation.card.dart';

class TaxationScreen extends StatelessWidget {
  const TaxationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Taxation'),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: const [
              TaxationCard(
                title: "VAT Return Filing",
                serviceDetailCards: [
                  TaxationServiceDetail(
                      title: "Starting From", amount: "1,000"),
                ],
              ),
              TaxationCard(
                title: "E-TDS Filing",
                serviceDetailCards: [
                  TaxationServiceDetail(
                      title: "Starting From", amount: "2,000"),
                ],
              ),
              TaxationCard(
                title: "Temporary/Bussiness Closure",
                serviceDetailCards: [
                  TaxationServiceDetail(
                      title: "Starting From", amount: "7,000"),
                ],
              ),
              TaxationCard(
                title: "Tax Returns Filing",
                serviceDetailCards: [
                  TaxationServiceDetail(
                      title: "Starting From", amount: "5,000"),
                ],
              ),
              TaxationCard(
                title: "Tax Clearance Certificate",
                serviceDetailCards: [
                  TaxationServiceDetail(
                      title: "Starting From", amount: "5,000"),
                ],
              ),
            ],
          ),
        ));
  }
}
