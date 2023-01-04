// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProfileModel {
  String name;
  String contact;
  String email;
  String gender;
  String image;
  String permanent_address;
  String temporary_address;
  String dob;
  String institution;
  String profileCompleted;
  ProfileModel({
    required this.name,
    required this.contact,
    required this.email,
    required this.gender,
    required this.image,
    required this.permanent_address,
    required this.temporary_address,
    required this.dob,
    required this.institution,
    required this.profileCompleted,
  });

  ProfileModel copyWith({
    String? name,
    String? contact,
    String? email,
    String? gender,
    String? image,
    String? permanent_address,
    String? temporary_address,
    String? dob,
    String? institution,
    String? profileCompleted,
  }) {
    return ProfileModel(
      name: name ?? this.name,
      contact: contact ?? this.contact,
      email: email ?? this.email,
      gender: gender ?? this.gender,
      image: image ?? this.image,
      permanent_address: permanent_address ?? this.permanent_address,
      temporary_address: temporary_address ?? this.temporary_address,
      dob: dob ?? this.dob,
      institution: institution ?? this.institution,
      profileCompleted: profileCompleted ?? this.profileCompleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'contact': contact,
      'email': email,
      'gender': gender,
      'image': image,
      'permanent_address': permanent_address,
      'temporary_address': temporary_address,
      'dob': dob,
      'institution': institution,
      'profileCompleted': profileCompleted,
    };
  }

  factory ProfileModel.fromMap(Map<String, dynamic> map) {
    return ProfileModel(
      name: map['name'] as String,
      contact: map['contact'] as String,
      email: map['email'] as String,
      gender: map['gender'] as String,
      image: map['image'] as String,
      permanent_address: map['permanent_address'] as String,
      temporary_address: map['temporary_address'] as String,
      dob: map['dob'] as String,
      institution: map['institution'] as String,
      profileCompleted: map['profileCompleted'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProfileModel.fromJson(String source) =>
      ProfileModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProfileModel(name: $name, contact: $contact, email: $email, gender: $gender, image: $image, permanent_address: $permanent_address, temporary_address: $temporary_address, dob: $dob, institution: $institution, profileCompleted: $profileCompleted)';
  }

  @override
  bool operator ==(covariant ProfileModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.contact == contact &&
        other.email == email &&
        other.gender == gender &&
        other.image == image &&
        other.permanent_address == permanent_address &&
        other.temporary_address == temporary_address &&
        other.dob == dob &&
        other.institution == institution &&
        other.profileCompleted == profileCompleted;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        contact.hashCode ^
        email.hashCode ^
        gender.hashCode ^
        image.hashCode ^
        permanent_address.hashCode ^
        temporary_address.hashCode ^
        dob.hashCode ^
        institution.hashCode ^
        profileCompleted.hashCode;
  }
}
