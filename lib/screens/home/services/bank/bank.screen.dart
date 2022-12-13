import 'package:flutter/material.dart';
import 'package:ubsclient/screens/home/services/bank/bank.card.dart';

class BankScreen extends StatelessWidget {
  const BankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Bank'),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: const [
              BankCard(
                title: "Projected Financial Statements",
                serviceDetailCards: [
                  BankDetail(title: "upto 15 lacs", amount: "8000"),
                  BankDetail(title: "15 lacs to 1 crore", amount: "10000"),
                  BankDetail(title: "1 crore to 5 crore", amount: "15000"),
                  BankDetail(title: "5 crore +", amount: "18000"),
                ],
              ),
              BankCard(
                title: "Provisional Financial Statements",
                serviceDetailCards: [
                  BankDetail(title: "upto 15 lacs", amount: "8000"),
                  BankDetail(title: "15 lacs to 1 crore", amount: "10000"),
                  BankDetail(title: "1 crore to 5 crore", amount: "15000"),
                  BankDetail(title: "5 crore +", amount: "18000"),
                ],
              ),
              BankCard(
                title: "Business Plans",
                serviceDetailCards: [
                  BankDetail(title: "upto 15 lacs", amount: "5000"),
                  BankDetail(title: "15 lacs to 1 crore", amount: "5000"),
                  BankDetail(title: "1 crore to 5 crore", amount: "8000"),
                  BankDetail(title: "5 crore +", amount: "20000"),
                ],
              ),
              BankCard(
                title: "Provisional and Projected",
                serviceDetailCards: [
                  BankDetail(title: "upto 15 lacs", amount: "13000"),
                  BankDetail(title: "15 lacs to 1 crore", amount: "15000"),
                  BankDetail(title: "1 crore to 5 crore", amount: "25000"),
                  BankDetail(title: "5 crore +", amount: "28000"),
                ],
              ),
              BankCard(
                title: "Projected, Provisional and Business Plans",
                serviceDetailCards: [
                  BankDetail(title: "upto 15 lacs", amount: "18000"),
                  BankDetail(title: "15 lacs to 1 crore", amount: "23000"),
                  BankDetail(title: "1 crore to 5 crore", amount: "33000"),
                  BankDetail(title: "5 crore +", amount: "48000"),
                ],
              ),
              BankCard(
                title: "Feasibility Reports",
                serviceDetailCards: [
                  BankDetail(title: "Fee", amount: "Starting from 25000"),
                ],
              ),
              BankCard(
                title: "Financial Credibility Check",
                serviceDetailCards: [
                  BankDetail(title: "Fee", amount: "Starting from 15000"),
                ],
              ),
            ],
          ),
        ));
  }
}
