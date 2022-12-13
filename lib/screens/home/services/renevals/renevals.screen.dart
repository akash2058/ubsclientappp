import 'package:flutter/material.dart';
import 'package:ubsclient/screens/home/services/renevals/renevals.card.dart';

class RenevalScreen extends StatelessWidget {
  const RenevalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Renevals'),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: const [
              RenevalCard(
                title: "Exim Code Renewals",
                serviceDetailCards: [
                  RenevalsServiceDetail(title: "Starting From", amount: "8000"),
                ],
              ),
              RenevalCard(
                title: "Banijya Renewals",
                serviceDetailCards: [
                  RenevalsServiceDetail(title: "Fee", amount: "17000"),
                ],
              ),
              RenevalCard(
                title: "Gharelu Renewals",
                serviceDetailCards: [
                  RenevalsServiceDetail(title: "Fee", amount: "17000"),
                ],
              ),
              RenevalCard(
                title: "Udhyog Renewals",
                serviceDetailCards: [
                  RenevalsServiceDetail(title: "Fee", amount: "17000"),
                ],
              ),
              RenevalCard(
                title: "Ward Renewals",
                serviceDetailCards: [
                  RenevalsServiceDetail(title: "Fee", amount: "17000"),
                ],
              ),
            ],
          ),
        ));
  }
}
