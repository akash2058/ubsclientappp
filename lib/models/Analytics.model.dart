// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

class Analytics {
  Analytics({
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

  factory Analytics.fromJson(Map<String, dynamic> json) => Analytics(
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
