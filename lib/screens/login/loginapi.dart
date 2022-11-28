
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ubsprofessional/models/data.dart';


// ignore: must_be_immutable
class DataPage extends StatelessWidget {
  DataPage({super.key});

  List<Data> data = [];


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(String email, password) async {
    try {
      Response response = await post(
          Uri.parse('https://api.ubs.com.np/index.php?method=user_login'),
          body: {
      'username' : email,
      'password' : password
      }
      );

      if (response.statusCode == 200){
        var data = jsonDecode(response.body.toString());
        print(data);
        print('account created successfully');
      } else {
        print('failed');
      }
    } catch(e) {
      print(e.toString());
  }
}

void saveText(String text) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs. setString("text", text);
}

void readText() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
     String? savedValue = prefs.getString("text");
     if (savedValue != null){
       emailController.text = savedValue;
     }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Api'),

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              hintText: 'Email'
            ),
            onChanged: (val) {
              saveText(val);
            },
          ),
          const SizedBox(height: 20,width: 50,),
          TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(
                hintText: 'Password'
            ),
          ),
          SizedBox(height: 40, width: 60,),
          GestureDetector(
            onTap: () {
              login(emailController.text.toString(), passwordController.text.toString());
            },

            child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10)
            ),
            child:Center(child: Text('Sign Up'),),
          )
          ),
        ]
      )
      ),
    );
  }
}