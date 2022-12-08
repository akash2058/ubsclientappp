// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/rendering.dart';

class BlogModel {
  String blogID;
  String title;
  String author;
  String? author_link;
  String? post_link;
  String? author_image;
  String? thumbnail;
  String? added_by;
  String? blog_timestamp;
  String? blog_type;
  BlogModel({
    required this.blogID,
    required this.title,
    required this.author,
    this.author_link,
    this.post_link,
    this.author_image,
    this.thumbnail,
    this.added_by,
    this.blog_timestamp,
    this.blog_type,
  });

  BlogModel copyWith({
    String? blogID,
    String? title,
    String? author,
    String? author_link,
    String? post_link,
    String? author_image,
    String? thumbnail,
    String? added_by,
    String? blog_timestamp,
    String? blog_type,
  }) {
    return BlogModel(
      blogID: blogID ?? this.blogID,
      title: title ?? this.title,
      author: author ?? this.author,
      author_link: author_link ?? this.author_link,
      post_link: post_link ?? this.post_link,
      author_image: author_image ?? this.author_image,
      thumbnail: thumbnail ?? this.thumbnail,
      added_by: added_by ?? this.added_by,
      blog_timestamp: blog_timestamp ?? this.blog_timestamp,
      blog_type: blog_type ?? this.blog_type,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blogID': blogID,
      'title': title,
      'author': author,
      'author_link': author_link,
      'post_link': post_link,
      'author_image': author_image,
      'thumbnail': thumbnail,
      'added_by': added_by,
      'blog_timestamp': blog_timestamp,
      'blog_type': blog_type,
    };
  }

  factory BlogModel.fromMap(Map<String, dynamic> map) {
    return BlogModel(
      blogID: map['blogID'] as String,
      title: map['title'] as String,
      author: map['author'] as String,
      author_link:
          map['author_link'] != null ? map['author_link'] as String : null,
      post_link: map['post_link'] != null ? map['post_link'] as String : null,
      author_image:
          map['author_image'] != null ? map['author_image'] as String : null,
      thumbnail: map['thumbnail'] != null ? map['thumbnail'] as String : null,
      added_by: map['added_by'] != null ? map['added_by'] as String : null,
      blog_timestamp: map['blog_timestamp'] != null
          ? map['blog_timestamp'] as String
          : null,
      blog_type: map['blog_type'] != null ? map['blog_type'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory BlogModel.fromJson(String source) =>
      BlogModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BlogModel(blogID: $blogID, title: $title, author: $author, author_link: $author_link, post_link: $post_link, author_image: $author_image, thumbnail: $thumbnail, added_by: $added_by, blog_timestamp: $blog_timestamp, blog_type: $blog_type)';
  }

  @override
  bool operator ==(covariant BlogModel other) {
    if (identical(this, other)) return true;

    return other.blogID == blogID &&
        other.title == title &&
        other.author == author &&
        other.author_link == author_link &&
        other.post_link == post_link &&
        other.author_image == author_image &&
        other.thumbnail == thumbnail &&
        other.added_by == added_by &&
        other.blog_timestamp == blog_timestamp &&
        other.blog_type == blog_type;
  }

  @override
  int get hashCode {
    return blogID.hashCode ^
        title.hashCode ^
        author.hashCode ^
        author_link.hashCode ^
        post_link.hashCode ^
        author_image.hashCode ^
        thumbnail.hashCode ^
        added_by.hashCode ^
        blog_timestamp.hashCode ^
        blog_type.hashCode;
  }
}
