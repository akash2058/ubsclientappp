// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DocumentModel {
  String userID;
  String documentName;
  String documentLink;
  String addeddate;
  DocumentModel({
    required this.userID,
    required this.documentName,
    required this.documentLink,
    required this.addeddate,
  });

  DocumentModel copyWith({
    String? userID,
    String? documentName,
    String? documentLink,
    String? addeddate,
  }) {
    return DocumentModel(
      userID: userID ?? this.userID,
      documentName: documentName ?? this.documentName,
      documentLink: documentLink ?? this.documentLink,
      addeddate: addeddate ?? this.addeddate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userID': userID,
      'documentName': documentName,
      'documentLink': documentLink,
      'addeddate': addeddate,
    };
  }

  factory DocumentModel.fromMap(Map<String, dynamic> map) {
    return DocumentModel(
      userID: map['userID'] as String,
      documentName: map['documentName'] as String,
      documentLink: map['documentLink'] as String,
      addeddate: map['addeddate'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DocumentModel.fromJson(String source) =>
      DocumentModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DocumentModel(userID: $userID, documentName: $documentName, documentLink: $documentLink, addeddate: $addeddate)';
  }

  @override
  bool operator ==(covariant DocumentModel other) {
    if (identical(this, other)) return true;

    return other.userID == userID &&
        other.documentName == documentName &&
        other.documentLink == documentLink &&
        other.addeddate == addeddate;
  }

  @override
  int get hashCode {
    return userID.hashCode ^
        documentName.hashCode ^
        documentLink.hashCode ^
        addeddate.hashCode;
  }
}
