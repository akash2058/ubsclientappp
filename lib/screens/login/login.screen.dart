import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:ubsprofessional/screens/login/login.header.dart';
import 'package:http/http.dart' as http;

import '../../models/data.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Future<bool> login(String email, password) async {
    try {
      Response response = await post(
          Uri.parse('https://api.ubs.com.np/index.php?method=user_login'),
          body: {
            'username' : email,
            'password' : password
          }
      );
      var responseData = jsonDecode(response.body.toString());

      if (responseData["response"] == "success") {
        final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
        var userData = responseData["data"];
        sharedPreferences.setBool('isLoggedIn', true);
        sharedPreferences.setInt('user', int.parse(userData["user"]));
        sharedPreferences.setString('usertype', userData["usertype"] );
        sharedPreferences.setString('fullname', userData["fullname"] );
        sharedPreferences.setString('email', userData["email"] );
        sharedPreferences.setString('image', userData["image"] );
        sharedPreferences.setString('profileCompleted', userData["profileCompleted"] );
        sharedPreferences.setString('phoneno', email);
        sharedPreferences.setString('password', password);

        return true;
      }
      return false;
    } catch(e) {
      return false;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkSavedCredentials();

  }

  void checkSavedCredentials() async{
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();;
    setState(() {
      emailController = TextEditingController(text: sharedPreferences.getString('phoneno')!);
      passwordController = TextEditingController(text: sharedPreferences.getString('password')!);
    });
  }

  bool hidePassword = true;

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
                            controller: emailController,
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
                              Text("Password"),
                              Text(
                                "*",
                                style: TextStyle(color: Colors.red, fontSize: 20),
                              )
                            ],
                          ),
                          TextFormField(

                            obscureText: hidePassword,
                            controller: passwordController,
                            decoration:
                                InputDecoration(
                                    suffixIcon: IconButton(onPressed: () {

                                      setState(() {
                                        hidePassword=!hidePassword;
                                      });

                                    }, icon: (hidePassword)? Icon(Icons.visibility) : Icon(Icons.visibility_off),),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)), hintText: "Password"),
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
                          onPressed: () async {

                            bool isLoggedIn = await login(emailController.text.toString(), passwordController.text.toString());
                            if(isLoggedIn){
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully Logged In"),backgroundColor: Colors.green,));
                              Navigator.pushNamed(context, "/dashboard");
                            }else{
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid Username or Password"),backgroundColor: Colors.red));
                            }
                          },
                          child: GestureDetector(
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                              color: Colors.red,

                            ),
                          )),

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
