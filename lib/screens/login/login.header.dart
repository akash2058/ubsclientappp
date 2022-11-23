import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("static/header-bg.jpg"),
        opacity: 0.25,
        fit: BoxFit.cover,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Upaya Logo",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 4),
            color: Colors.blue.shade800,
            child: const Text(
              "Upaya Services Ltd.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const Text(
            "Sign IN",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
          ),
          Text(
            "Welcome !",
            style: TextStyle(fontSize: 28, color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }
}
