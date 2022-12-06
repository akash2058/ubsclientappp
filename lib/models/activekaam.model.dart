import 'dart:convert';

import 'package:ubsclient/models/blog.model.dart';

class BlogModel {
  String transactionID;
  String companyName;
  String clientID;
  String fullname;
  String? imageURL;
  String rating;
  String review;
  String reviewedOn;
  BlogModel({
    required this.transactionID,
    required this.companyName,
    required this.clientID,
    required this.fullname,
    this.imageURL,
    required this.rating,
    required this.review,
    required this.reviewedOn,
  });
}
