// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ServiceCard(
                  svg: "assets/images/Ripple-1s-200px.svg",
                  label: "Registration",
                ),
              ),
              Expanded(
                child: ServiceCard(
                  svg: "assets/images/Ripple-1s-200px.svg",
                  label: "Registration",
                ),
              ),
            ],
          ),
          Row(),
          Row(),
          Row(),
          Row(),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String label;
  final String svg;

  const ServiceCard({super.key, required this.label, required this.svg});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            SvgPicture.asset(svg),
            Text(
              label,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
