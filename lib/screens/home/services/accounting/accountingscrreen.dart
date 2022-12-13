import 'package:flutter/material.dart';

import 'accountingcardscreen.dart';

class AccountingScreen extends StatelessWidget {
  const AccountingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Accounting'),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: const [
              AccountingCard(
                title: "Monthly Financial Reporting",
                serviceDetailCards: [
                  AccountingServiceDetail(
                      title: "Starting From", amount: "5,000"),
                ],
              ),
              AccountingCard(
                title: "Preparation of Financial Statement",
                serviceDetailCards: [
                  AccountingServiceDetail(
                      title: "Starting From", amount: "7,000"),
                ],
              ),
              AccountingCard(
                title: "Charts of Accounts",
                serviceDetailCards: [
                  AccountingServiceDetail(
                      title: "Starting From", amount: "7,000"),
                ],
              ),
              AccountingCard(
                title: "Internal Control Setup",
                serviceDetailCards: [
                  AccountingServiceDetail(
                      title: "Starting From", amount: "7,000"),
                ],
              ),
              AccountingCard(
                title: "Finance and Accounting Manual(FAM)",
                serviceDetailCards: [
                  AccountingServiceDetail(
                      title: "Starting From", amount: "7,000"),
                ],
              ),
              AccountingCard(
                title: "Due Diligence Review",
                serviceDetailCards: [
                  AccountingServiceDetail(
                      title: "Starting From", amount: "7,000"),
                ],
              ),
              AccountingCard(
                title: "Special Reviews",
                serviceDetailCards: [
                  AccountingServiceDetail(
                      title: "Revenue Verfication", amount: "7,000"),
                  AccountingServiceDetail(
                      title: "Physical Verfication", amount: "7,000"),
                ],
              ),
              AccountingCard(
                title: "HR Manual ",
                serviceDetailCards: [
                  AccountingServiceDetail(
                      title: "Starting From", amount: "7,000"),
                ],
              ),
              AccountingCard(
                title: "Admin Manual",
                serviceDetailCards: [
                  AccountingServiceDetail(
                      title: "Starting From", amount: "7,000"),
                ],
              ),
              AccountingCard(
                title: "Procurement Manual",
                serviceDetailCards: [
                  AccountingServiceDetail(
                      title: "Starting From", amount: "10,000"),
                ],
              ),
              AccountingCard(
                title: "Other Customized Services",
                serviceDetailCards: [
                  AccountingServiceDetail(
                      title: "", amount: "Case to Case Basis"),
                ],
              ),
            ],
          ),
        ));
  }
}
