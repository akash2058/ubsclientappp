import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  List<Signup> data = [];

  bool isLoading = false;

  TextEditingController nameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Future<bool> signup(
      String fullname, String phone, String email, String password) async {
    try {
      Response response = await post(
          Uri.parse('https://api.ubs.com.np/index.php?method=register_user'),
          body: {
            'fullname': fullname,
            'usertype': 'Service Seeker',
            'phone': phone,
            'register_form': 'Android',
            'password': password,
            'email': email
          }).timeout(const Duration(seconds: 30));
      var responseData = jsonDecode(response.body.toString());
      if (responseData["response"] == "success") {
        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.setString("verify_user", responseData["verifyuser"].toString());
        pref.setString("verify_phone", phone);
        pref.setString("verify_email", email);
        return true;
      } else if (responseData["response"] == "exists" ||
          responseData["response"] == "inactive") {
        return false;
      }
      throw Exception();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  void initState() {
    super.initState();
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Expanded(flex: 1, child: Header()),
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
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
                              controller: confirmpasswordController,
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
                                        backgroundColor: Colors.blue,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      onPressed: () async {
                                        setState(() {
                                          isLoading = true;
                                        });
                                        if (passwordController.text !=
                                            confirmpasswordController.text) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                  "Passwords do not match."),
                                              backgroundColor: Colors.red,
                                            ),
                                          );
                                        } else {
                                          try {
                                            bool done = await signup(
                                              nameController.text.toString(),
                                              phoneController.text.toString(),
                                              emailController.text.toString(),
                                              passwordController.text
                                                  .toString(),
                                            );
                                            if (done) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(const SnackBar(
                                                content: Text(
                                                    "Signup successfully."),
                                                backgroundColor: Colors.green,
                                              ));
                                              Navigator.pushNamed(
                                                  context, "/otp");
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                  content: Text(
                                                      "User Already Exists. Please Login with your number."),
                                                  backgroundColor: Colors.blue,
                                                ),
                                              );
                                            }
                                          } catch (err) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                    "Failed to sign up. Please Try again."),
                                                backgroundColor: Colors.red,
                                              ),
                                            );
                                          }
                                        }
                                        setState(() {
                                          isLoading = false;
                                        });
                                      },
                                      child: const Text(
                                        "Sign Up",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )),
                                  Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text("Already have an account ?"),
                                        TextButton(
                                          onPressed: () {
                                            setState(() {
                                              isLoading = false;
                                            });
                                            Navigator.pushNamed(
                                                context, "/login");
                                          },
                                          child: const Text(
                                            "Sign In",
                                            style: TextStyle(
                                              color: Colors.blue,
                                            ),
                                          ),
                                        )
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
            if (isLoading)
              Positioned.fill(
                child: Container(
                  color: Colors.white70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircularProgressIndicator(),
                      Text("Please wait"),
                    ],
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
