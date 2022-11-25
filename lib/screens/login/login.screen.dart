import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ubsprofessional/screens/login/login.header.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(
                flex: 1,
                // child: Text("hi"),
                child: Header()),
            Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text("Full Name"),
                              Text(
                                "*",
                                style: TextStyle(color: Colors.red, fontSize: 22),
                              )
                            ],
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                hintText: "Phone No."),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text("Date of Birth"),
                              Text(
                                "*",
                                style: TextStyle(color: Colors.red, fontSize: 20),
                              )
                            ],
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)), hintText: "Password"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("Forgot Password ? "),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/reset");
                              },
                              child: const Text(
                                "Reset",
                                style: TextStyle(color: Colors.deepOrange),
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      OutlinedButton(
                          style: ButtonStyle(
                              side: MaterialStateProperty.all(const BorderSide(color: Colors.red)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ))),
                          onPressed: () {
                            Navigator.pushNamed(context, '/dashboard');
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_box_outlined),
                          const Text("Don't have an account? "),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/signup");
                                // Navigator.of(context).pushNamed("/signup");
                              },
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Colors.deepOrange,
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
