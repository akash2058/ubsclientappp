import 'package:flutter/material.dart';
import 'package:ubsclient/screens/home/services/advisory/advisory.card.dart';

class AdvisoryScreen extends StatelessWidget {
  const AdvisoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('C'),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children:  [
              AdvisoryCard(
                title: "Three Month's Return of Company",
                serviceDetailCards: [
                  AdvisoryServiceDetail(title: "Fee", amount: "2500", onTap: () {  },),
                ],
              ),
              AdvisoryCard(
                title: "Annual Return",
                serviceDetailCards: [
                  AdvisoryServiceDetail(
                      title: "Annual Return of Private", amount: "6000", onTap: () {  },),
                  AdvisoryServiceDetail(
                      title: "Annual Return of Public", amount: "6000", onTap: () {  },),
                  AdvisoryServiceDetail(
                      title: "Annual Return of Not for Profit", amount: "6000", onTap: () {  },),
                  AdvisoryServiceDetail(
                      title: "Annual Return of Foreign Company/Branch",
                      amount: "6000", onTap: () {  },),
                ],
              ),
              AdvisoryCard(
                title: "Share Lagat",
                serviceDetailCards: [
                  AdvisoryServiceDetail(
                      title: "Old Company", amount: "12000", onTap: () {  },),
                  AdvisoryServiceDetail(
                      title: "New Company", amount: "15000", onTap: () {  },),
                ],
              ),
            ],
          ),
        ));
  }
}
