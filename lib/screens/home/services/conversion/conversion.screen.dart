import 'package:flutter/material.dart';

import 'conversion.card.dart';

class ConversionScreen extends StatelessWidget {
  const ConversionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Conversion'),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: const [
              ConversionCard(
                title: "Private to Public",
                serviceDetailCards: [
                  ConversionServiceDetail(title: "Fee", amount: "8000"),
                ],
              ),
              ConversionCard(
                title: "Private to Public",
                serviceDetailCards: [
                  ConversionServiceDetail(title: "Fee", amount: "8000"),
                ],
              ),
              ConversionCard(
                title: "Single Shareholdeer to Multi Shareholder",
                serviceDetailCards: [
                  ConversionServiceDetail(title: "Fee", amount: "8000"),
                ],
              ),
              ConversionCard(
                title: "MultiShareholder to Single Shareholder",
                serviceDetailCards: [
                  ConversionServiceDetail(title: "Fee", amount: "8000"),
                ],
              ),
            ],
          ),
        ));
  }
}
