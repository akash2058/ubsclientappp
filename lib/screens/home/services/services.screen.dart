// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ubsclient/screens/home/services/taxation/taxation.screen.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: ServiceCard(
                    svg: "assets/svg/registration.svg",
                    label: "Registration",
                    gradients: [0xFF6681ED, 0xFF66B7ED],
                    onTap: () {
                      Navigator.pushNamed(context, '/registration');
                    },
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: ServiceCard(
                    svg: "assets/svg/compliance.svg",
                    label: "Compliance",
                    gradients: [0xFF0CAD57, 0xFF18DE75],
                    onTap: () {
                      Navigator.pushNamed(context, '/compliance');
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: ServiceCard(
                    svg: "assets/svg/accounting.svg",
                    label: "Accounting",
                    gradients: [0xFF63A3DB, 0xFF0884F0],
                    onTap: () {
                      Navigator.pushNamed(context, '/accounting');
                    },
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: ServiceCard(
                    svg: "assets/svg/tax.svg",
                    label: "Taxation",
                    gradients: [0xFF5C6CE6, 0xFF6D40DE],
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TaxationScreen(),
                          ));
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: ServiceCard(
                    svg: "assets/svg/bank.svg",
                    label: "Bank Works",
                    gradients: [0xFFFF03AF, 0xFFFF03AF],
                    onTap: () {
                      Navigator.pushNamed(context, '/bank');
                    },
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: ServiceCard(
                    svg: "assets/svg/job-interview.svg",
                    label: "Advisory",
                    gradients: [0xFF6F33C4, 0xFF5400C9],
                    onTap: () {
                      Navigator.pushNamed(context, '/advisory');
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: ServiceCard(
                    svg: "assets/svg/agreement.svg",
                    label: "Agreement Drafting",
                    gradients: [0xFFf83600, 0xFFfe8c00],
                    onTap: () {
                      Navigator.pushNamed(context, '/agreement');
                    },
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: ServiceCard(
                    svg: "assets/svg/gift.svg",
                    label: "Special Packages",
                    gradients: [0xFFFA1946, 0xFFC4062C],
                    onTap: () {
                      Navigator.pushNamed(context, '/packages');
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: ServiceCard(
                    svg: "assets/svg/certificate.svg",
                    label: "Renewals",
                    gradients: [0xFFBFAC06, 0xFFF0DA11],
                    onTap: () {
                      Navigator.pushNamed(context, '/renewals');
                    },
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: ServiceCard(
                    svg: "assets/svg/conversion.svg",
                    label: "Conversion",
                    gradients: [0xFF09F00D, 0xFF09A80B],
                    onTap: () {
                      Navigator.pushNamed(context, '/conversion');
                    },
                  ),
                ),
              ],
            ),
            ServiceCard(
              label: "Other Services",
              isOtherService: true,
              gradients: [0xFFfc00ff, 0xFF00dbde],
              onTap: () {
                Navigator.pushNamed(context, '/other');
              },
              svg: 'assets/svg/otherservices.png.svg',
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String label;
  final String svg;
  final double borderRadius = 22;
  final bool isOtherService;
  final List<int> gradients;
  final VoidCallback? onTap;

  const ServiceCard({
    super.key,
    required this.label,
    required this.svg,
    required this.gradients,
    this.isOtherService = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        margin: EdgeInsets.all(8),
        elevation: 5,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(borderRadius),
            gradient: LinearGradient(
                colors: [
                  Color(gradients[1]),
                  Color(gradients[0]),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: Padding(
              padding: const EdgeInsets.all(26),
              child: (!isOtherService)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          svg,
                          alignment: Alignment.center,
                          height: 80,
                          width: 80,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          label,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          svg,
                          alignment: Alignment.center,
                          height: 80,
                          width: 80,
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            label,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        )
                      ],
                    )),
        ),
      ),
    );
  }
}
