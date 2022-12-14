// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController controller = TextEditingController();
  Timer timer = Timer(Duration.zero, (() {}));
  final int optWaitTime = 20;

  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  void disableOTP() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (timer.tick > 19) {
        timer.cancel();
      }
      setState(() {});
    });
  }

  Future<void> reSendOTP() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String verifyUser = pref.getString("verify_user") ?? "";
    String verifyPhone = pref.getString("verify_phone") ?? "";
    String verifyEmail = pref.getString("verify_email") ?? "";
    if (verifyUser.isEmpty || verifyPhone.isEmpty || verifyEmail.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Something went wrong! Please try again in a while."),
        backgroundColor: Colors.red,
      ));
      return;
    }
    try {
      http.Response response = await http.post(
          Uri.parse(
            'https://api.ubs.com.np/index.php?method=resend_verification_code',
          ),
          body: {'verify_user': verifyUser, 'phone': verifyPhone});
      var responseData = jsonDecode(response.body.toString());
      if (responseData["response"] == "success") {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Verification code has been resent"),
          backgroundColor: Colors.blue,
        ));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Something went wrong! Please try again in a while."),
          backgroundColor: Colors.red,
        ));
      }
    } catch (err) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Something went wrong! Please try again in a while."),
        backgroundColor: Colors.red,
      ));
    }
  }

  Future<bool> verifyOTP(String code) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String verifyUser = pref.getString("verify_user") ?? "";
    String verifyPhone = pref.getString("verify_phone") ?? "";
    String verifyEmail = pref.getString("verify_email") ?? "";
    if (verifyUser.isEmpty || verifyPhone.isEmpty || verifyEmail.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Something went wrong! Please try again in a while."),
        backgroundColor: Colors.red,
      ));
      return false;
    }
    try {
      http.Response response = await http.post(
        Uri.parse(
          'https://api.ubs.com.np/index.php?method=verify_user_signup',
        ),
        body: {
          'verify_user': verifyUser,
          'verify_phone': verifyPhone,
          'verify_email': verifyEmail,
          'code': code,
        },
      );
      var responseData = jsonDecode(response.body.toString());
      if (responseData["response"] == "success") {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Verification code has been resent"),
          backgroundColor: Colors.blue,
        ));
        return true;
      } else if (responseData["response"] == "expired") {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Code has expired! Please request new code."),
          backgroundColor: Colors.red,
        ));
      } else if (responseData["response"] == "invalid code") {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Incorrect verification code! Please request new code."),
          backgroundColor: Colors.red,
        ));
      } else if (responseData["response"] == "activation failed") {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Could not activate user! Please request new code."),
          backgroundColor: Colors.red,
        ));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Something went wrong! Please try again in a while."),
          backgroundColor: Colors.red,
        ));
      }
      return false;
    } catch (err) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Something went wrong! Please try again in a while."),
        backgroundColor: Colors.red,
      ));
      return false;
    }
  }

  @override
  void initState() {
    super.initState();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
                child: Column(
              children: [
                Header(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(22),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Verify Sign Up",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text("Enter the 6-digit verification code sent to your phone number to verify your signup."),
                          SizedBox(
                            height: 32,
                          ),
                          SizedBox(
                            width: 200,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              controller: controller,
                              maxLength: 6,
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value!.isEmpty || value.length != 6) return "OTP incorrect";
                                return null;
                              },
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          MaterialButton(
                            color: Colors.green.shade400,
                            textColor: Colors.white,
                            onPressed: () async {
                              setState(() {
                                isLoading = true;
                              });
                              if (_formKey.currentState!.validate()) {
                                if (await verifyOTP(controller.text)) {
                                  Navigator.pushNamed(context, "/login");
                                }
                              }
                              setState(() {
                                isLoading = false;
                              });
                            },
                            child: Text("Verify"),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text("Didn't get the code? "),
                          TextButton(
                              onPressed: () {
                                if (!timer.isActive) {
                                  disableOTP();
                                  reSendOTP();
                                }
                              },
                              style: ButtonStyle(
                                foregroundColor: (!timer.isActive)
                                    ? MaterialStateProperty.all<Color>(Colors.blue)
                                    : MaterialStateProperty.all<Color>(Colors.grey),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Icon(Icons.refresh),
                                  Text("Resend Code"),
                                ],
                              )),
                          if (timer.isActive) Text("Please wait ${optWaitTime - timer.tick} seconds before you get a new code."),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
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
              ))
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
            "OTP Verification",
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
