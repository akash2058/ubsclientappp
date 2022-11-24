import 'package:flutter/material.dart';

class Myregister extends StatelessWidget {
  const Myregister({super.key});

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
                padding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            hintText: "Full Name"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          hintText: "Phone No.",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          hintText: "Email",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          hintText: "Password",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 5.0,
                              ),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            hintText: "Confirm Password"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Text(
                            "What is Your Expertise?",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: 1,
                                onChanged: (value) {},
                              ),
                              const Text("Legal Expertise 1"),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: 1,
                                onChanged: (value) {},
                              ),
                              const Text("Legal Expertise 2"),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("By Signing up agree to our"),
                          Text(
                            "Terms and Condition",
                            style: TextStyle(
                              color: Colors.deepOrange,
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Column(
                          children: [
                            OutlinedButton(
                                style: ButtonStyle(
                                    side: MaterialStateProperty.all(
                                        const BorderSide(color: Colors.red)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(18.0),
                                        ))),
                                onPressed: () {},
                                child: const Text(
                                  "Sign Out",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                )),
                            Center(
                              child: Row(
                                children: [
                                  Text("Already have an account ?"),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Sign In",
                                        style: TextStyle(
                                          color: Colors.deepOrange,
                                        ),
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/oop.jpg"),
            opacity: 0.25,
            fit: BoxFit.cover,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Image(
              image: AssetImage("assets/images/logo-blue.png"),
              height: 40,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            color: Colors.blue.shade800,
            child: const Text(
              "Upaya Services Ltd.",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Sign Out",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
          ),
          Text(
            "Let's get ready to go!",
            style: TextStyle(fontSize: 28, color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }
}
