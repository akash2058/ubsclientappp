// ignore_for_file: public_member_api_docs, sort_constructors_first
// To parse this JSON data, do
//
//     final blog = blogFromJson(jsonString);

import 'dart:convert';

class ReviewModel {
  String client_name;
  String service;
  String remarks;
  String rating;
  String client_address;
  String client_image;
  String expert_name;
  String review;
  String? admin_comment;
  String review_status;
  String review_time;
  ReviewModel({
    required this.client_name,
    required this.service,
    required this.remarks,
    required this.rating,
    required this.client_address,
    required this.client_image,
    required this.expert_name,
    required this.review,
    this.admin_comment,
    required this.review_status,
    required this.review_time,
  });

  ReviewModel copyWith({
    String? client_name,
    String? service,
    String? remarks,
    String? rating,
    String? client_address,
    String? client_image,
    String? expert_name,
    String? review,
    String? admin_comment,
    String? review_status,
    String? review_time,
  }) {
    return ReviewModel(
      client_name: client_name ?? this.client_name,
      service: service ?? this.service,
      remarks: remarks ?? this.remarks,
      rating: rating ?? this.rating,
      client_address: client_address ?? this.client_address,
      client_image: client_image ?? this.client_image,
      expert_name: expert_name ?? this.expert_name,
      review: review ?? this.review,
      admin_comment: admin_comment ?? this.admin_comment,
      review_status: review_status ?? this.review_status,
      review_time: review_time ?? this.review_time,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'client_name': client_name,
      'service': service,
      'remarks': remarks,
      'rating': rating,
      'client_address': client_address,
      'client_image': client_image,
      'expert_name': expert_name,
      'review': review,
      'admin_comment': admin_comment,
      'review_status': review_status,
      'review_time': review_time,
    };
  }

  factory ReviewModel.fromMap(Map<String, dynamic> map) {
    return ReviewModel(
      client_name: map['client_name'] as String,
      service: map['service'] as String,
      remarks: map['remarks'] as String,
      rating: map['rating'] as String,
      client_address: map['client_address'] as String,
      client_image: map['client_image'] as String,
      expert_name: map['expert_name'] as String,
      review: map['review'] as String,
      admin_comment:
          map['admin_comment'] != null ? map['admin_comment'] as String : null,
      review_status: map['review_status'] as String,
      review_time: map['review_time'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ReviewModel.fromJson(String source) =>
      ReviewModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ReviewModel(client_name: $client_name, service: $service, remarks: $remarks, rating: $rating, client_address: $client_address, client_image: $client_image, expert_name: $expert_name, review: $review, admin_comment: $admin_comment, review_status: $review_status, review_time: $review_time)';
  }

  @override
  bool operator ==(covariant ReviewModel other) {
    if (identical(this, other)) return true;

    return other.client_name == client_name &&
        other.service == service &&
        other.remarks == remarks &&
        other.rating == rating &&
        other.client_address == client_address &&
        other.client_image == client_image &&
        other.expert_name == expert_name &&
        other.review == review &&
        other.admin_comment == admin_comment &&
        other.review_status == review_status &&
        other.review_time == review_time;
  }

  @override
  int get hashCode {
    return client_name.hashCode ^
        service.hashCode ^
        remarks.hashCode ^
        rating.hashCode ^
        client_address.hashCode ^
        client_image.hashCode ^
        expert_name.hashCode ^
        review.hashCode ^
        admin_comment.hashCode ^
        review_status.hashCode ^
        review_time.hashCode;
  }
}
