// To parse this JSON data, do
//
//     final login = loginFromJson(jsonString);

import 'dart:convert';



class Login {
  Login({
    required this.response,
    required this.data,
  });

  String response;
  Data data;

  factory Login.fromJson(Map<String, dynamic> json) => Login(
    response: json["response"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "response": response,
    "data": data.toJson(),
  };
}

class Data {
  Data({
    required this.user,
    required this.usertype,
    required this.fullname,
    required this.email,
    required this.image,
    required this.profileCompleted,
  });

  String user;
  String usertype;
  String fullname;
  String email;
  String image;
  String profileCompleted;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    user: json["user"],
    usertype: json["usertype"],
    fullname: json["fullname"],
    email: json["email"],
    image: json["image"],
    profileCompleted: json["profileCompleted"],
  );

  Map<String, dynamic> toJson() => {
    "user": user,
    "usertype": usertype,
    "fullname": fullname,
    "email": email,
    "image": image,
    "profileCompleted": profileCompleted,
  };
}
