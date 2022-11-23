import 'package:flutter/material.dart';
import 'package:ubsprofessional/screens/login/login.header.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
            flex: 1,
            // child: Text("hi"),
            child: LoginHeader()),
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
                              borderRadius: BorderRadius.circular(30),
                            ),
                            hintText: "Phone No."),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text("Date of Birth"),
                          Text(
                            "*",
                            style: TextStyle(color: Colors.red, fontSize: 22),
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
                    children: [const Text("Forgot Password ? "), TextButton(onPressed: () {}, child: const Text("Reset"))],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  OutlinedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(const BorderSide(color: Colors.red)),
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.circular(18.0),
                          // ),
                          foregroundColor: MaterialStateProperty.all(Colors.red)),
                      onPressed: () {},
                      child: const Text("Sign In")),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [const Text("Dont have an account? "), TextButton(onPressed: () {}, child: const Text("Sign Up"))],
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
