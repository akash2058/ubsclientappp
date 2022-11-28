// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ubsprofessional/models/album.dart';

class ExpertisePage extends StatefulWidget {
  const ExpertisePage({Key? key}) : super(key: key);

  @override
  State<ExpertisePage> createState() => _ExpertisePageState();
}

class _ExpertisePageState extends State<ExpertisePage> {

  bool isLoading = true;
  int user = 0;
  String fullname = "";
  String image = "";
  String email = "";
  
  @override
  void initState() {
    super.initState();
    loadUserData();
  }
    
  void loadUserData() async{
    final pref = await SharedPreferences.getInstance();
    user = pref.getInt("user") ?? 0;
    email = pref.getString("email") ?? "";
    image = pref.getString("image") ?? "";
    fullname = pref.getString("fullname") ?? "";
    setState(() {
      isLoading = false;
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    if(isLoading){
      return Center(child: CircularProgressIndicator(),);
    }

    return Container(child:
    Column(
      children: [
        Image.network(image,width: 300,),
        Text("$user"),
        Text("$fullname"),
        Text("$email"),

      ],
    ),);
  }
}