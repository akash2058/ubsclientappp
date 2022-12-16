// ignore_for_file: public_member_api_docs, sort_constructors_first
// To parse this JSON data, do
//
//     final blog = blogFromJson(jsonString);

import 'dart:convert';

class ReviewModel {
  String transactionID;
  String companyName;
  String clientID;
  String fullname;
  String? imageURL;
  String rating;
  String review;
  String reviewedOn;
  ReviewModel({
    required this.transactionID,
    required this.companyName,
    required this.clientID,
    required this.fullname,
    this.imageURL,
    required this.rating,
    required this.review,
    required this.reviewedOn,
  });

  ReviewModel copyWith({
    String? transactionID,
    String? companyName,
    String? clientID,
    String? fullname,
    String? imageURL,
    String? rating,
    String? review,
    String? reviewedOn,
  }) {
    return ReviewModel(
      transactionID: transactionID ?? this.transactionID,
      companyName: companyName ?? this.companyName,
      clientID: clientID ?? this.clientID,
      fullname: fullname ?? this.fullname,
      imageURL: imageURL ?? this.imageURL,
      rating: rating ?? this.rating,
      review: review ?? this.review,
      reviewedOn: reviewedOn ?? this.reviewedOn,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transactionID': transactionID,
      'companyName': companyName,
      'clientID': clientID,
      'fullname': fullname,
      'imageURL': imageURL,
      'rating': rating,
      'review': review,
      'reviewedOn': reviewedOn,
    };
  }

  factory ReviewModel.fromMap(Map<String, dynamic> map) {
    return ReviewModel(
      transactionID: map['transactionID'] as String,
      companyName: map['companyName'] as String,
      clientID: map['clientID'] as String,
      fullname: map['fullname'] as String,
      imageURL: map['imageURL'] != null ? map['imageURL'] as String : null,
      rating: map['rating'] as String,
      review: map['review'] as String,
      reviewedOn: map['reviewedOn'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ReviewModel.fromJson(String source) =>
      ReviewModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ReviewModel(transactionID: $transactionID, companyName: $companyName, clientID: $clientID, fullname: $fullname, imageURL: $imageURL, rating: $rating, review: $review, reviewedOn: $reviewedOn)';
  }

  @override
  bool operator ==(covariant ReviewModel other) {
    if (identical(this, other)) return true;

    return other.transactionID == transactionID &&
        other.companyName == companyName &&
        other.clientID == clientID &&
        other.fullname == fullname &&
        other.imageURL == imageURL &&
        other.rating == rating &&
        other.review == review &&
        other.reviewedOn == reviewedOn;
  }

  @override
  int get hashCode {
    return transactionID.hashCode ^
        companyName.hashCode ^
        clientID.hashCode ^
        fullname.hashCode ^
        imageURL.hashCode ^
        rating.hashCode ^
        review.hashCode ^
        reviewedOn.hashCode;
  }
}
