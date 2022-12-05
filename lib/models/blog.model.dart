// To parse this JSON data, do
//
//     final blog = blogFromJson(jsonString);

import 'dart:convert';

class BlogModel {
  BlogModel({
    required this.response,
    required this.reviews,
    required this.max,
  });

  String response;
  List<Map<String, String>> reviews;
  String max;

  factory BlogModel.fromJson(Map<String, dynamic> json) => BlogModel(
        response: json["response"],
        reviews: List<Map<String, String>>.from(json["reviews"].map((x) =>
            Map.from(x).map(
                (k, v) => MapEntry<String, String>(k, v == null ? null : v)))),
        max: json["max"],
      );

  Map<String, dynamic> toJson() => {
        "response": response,
        "reviews": List<dynamic>.from(reviews.map((x) => Map.from(x).map(
            (k, v) => MapEntry<String, dynamic>(k, v == null ? null : v)))),
        "max": max,
      };
}
