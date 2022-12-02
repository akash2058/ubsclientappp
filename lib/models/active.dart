// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

Post postFromJson(String str) => Post.fromJson(json.decode(str));

String postToJson(Post data) => json.encode(data.toJson());

class Post {
  Post({
    required this.response,
    required this.revenue,
    required this.completedKaam,
    required this.ongoingKaam,
    required this.rating,
    required this.amountReceive,
  });

  String response;
  String revenue;
  String completedKaam;
  String ongoingKaam;
  String rating;
  String amountReceive;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        response: json["response"],
        revenue: json["revenue"],
        completedKaam: json["completed_kaam"],
        ongoingKaam: json["ongoing_kaam"],
        rating: json["rating"],
        amountReceive: json["amount_receive"],
      );

  Map<String, dynamic> toJson() => {
        "response": response,
        "revenue": revenue,
        "completed_kaam": completedKaam,
        "ongoing_kaam": ongoingKaam,
        "rating": rating,
        "amount_receive": amountReceive,
      };
}
