import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

// ignore: must_be_immutable
class Signup extends StatelessWidget {
  Signup({super.key});

  List<Signup> data = [];

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  Future<bool> signup(String fullname, String phone, String email, String password) async {
    try {
      Response response = await post(Uri.parse('https://api.ubs.com.np/index.php?method=register_user'), body: {
        'fullname': fullname,
        'usertype': 'Service Seeker',
        'phone': phone,
        'register_form': 'Android',
        'password': password,
        'email': email
      });
      var responseData = jsonDecode(response.body.toString());
      if (responseData["response"] == "success") {
        return true;
      } else if (responseData["response"] == "exists") {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

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
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text('Full Name'),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.redAccent),
                          )
                        ],
                      ),
                      TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            hintText: "Full Name"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Text('Phone Number'),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.redAccent),
                          )
                        ],
                      ),
                      TextFormField(
                        controller: phoneController,
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
                      Row(
                        children: const [
                          Text('Email'),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.redAccent),
                          )
                        ],
                      ),
                      TextFormField(
                        controller: emailController,
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
                      Row(
                        children: const [
                          Text('Password'),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.redAccent),
                          )
                        ],
                      ),
                      TextFormField(
                        obscureText: true,
                        controller: passwordController,
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
                      Row(
                        children: const [
                          Text('Confirm Password'),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.redAccent),
                          )
                        ],
                      ),
                      TextFormField(
                        obscureText: true,
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
                            "IM A",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          Text(
                            "*",
                            style: TextStyle(
                              color: Colors.redAccent,
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
                              const Text("Client"),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text("By Signing up agree to our"),
                          Text(
                            "Terms and Condition",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Column(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                onPressed: () async {
                                  if (await signup(nameController.text.toString(), phoneController.text.toString(),
                                      emailController.text.toString(), passwordController.text.toString())) {
                                    Navigator.pushNamed(context, "/login");
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                      content: Text("Failed to sign up. Try again."),
                                      backgroundColor: Colors.blue,
                                    ));
                                  }
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Already have an account ?"),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, "/login");
                                      },
                                      child: const Text(
                                        "Sign In",
                                        style: TextStyle(
                                          color: Colors.blue,
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
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
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
