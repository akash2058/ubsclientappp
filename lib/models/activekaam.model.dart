// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:http/http.dart';

class PackageModel {
  String pid;
  String addedDate;
  String clientName;
  String companyName;
  String visit;
  String invoicePeriod;
  String startDate;
  String endDate;
  String price;
  String packageType;
  String services;
  String dueFee;
  PackageModel({
    required this.pid,
    required this.addedDate,
    required this.clientName,
    required this.companyName,
    required this.visit,
    required this.invoicePeriod,
    required this.startDate,
    required this.endDate,
    required this.price,
    required this.packageType,
    required this.services,
    required this.dueFee,
  });

  PackageModel copyWith({
    String? pid,
    String? addedDate,
    String? clientName,
    String? companyName,
    String? visit,
    String? invoicePeriod,
    String? startDate,
    String? endDate,
    String? price,
    String? packageType,
    String? services,
    String? dueFee,
  }) {
    return PackageModel(
      pid: pid ?? this.pid,
      addedDate: addedDate ?? this.addedDate,
      clientName: clientName ?? this.clientName,
      companyName: companyName ?? this.companyName,
      visit: visit ?? this.visit,
      invoicePeriod: invoicePeriod ?? this.invoicePeriod,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      price: price ?? this.price,
      packageType: packageType ?? this.packageType,
      services: services ?? this.services,
      dueFee: dueFee ?? this.dueFee,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pid': pid,
      'addedDate': addedDate,
      'clientName': clientName,
      'companyName': companyName,
      'visit': visit,
      'invoicePeriod': invoicePeriod,
      'startDate': startDate,
      'endDate': endDate,
      'price': price,
      'packageType': packageType,
      'services': services,
      'dueFee': dueFee,
    };
  }

  factory PackageModel.fromMap(Map<String, dynamic> map) {
    return PackageModel(
      pid: map['pid'] as String,
      addedDate: map['addedDate'] as String,
      clientName: map['clientName'] as String,
      companyName: map['companyName'] as String,
      visit: map['visit'] as String,
      invoicePeriod: map['invoicePeriod'] as String,
      startDate: map['startDate'] as String,
      endDate: map['endDate'] as String,
      price: map['price'] as String,
      packageType: map['packageType'] as String,
      services: map['services'] as String,
      dueFee: map['dueFee'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PackageModel.fromJson(String source) =>
      PackageModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ActiveKaamModel(pid: $pid, addedDate: $addedDate, clientName: $clientName, companyName: $companyName, visit: $visit, invoicePeriod: $invoicePeriod, startDate: $startDate, endDate: $endDate, price: $price, packageType: $packageType, services: $services, dueFee: $dueFee)';
  }

  @override
  bool operator ==(covariant PackageModel other) {
    if (identical(this, other)) return true;

    return other.pid == pid &&
        other.addedDate == addedDate &&
        other.clientName == clientName &&
        other.companyName == companyName &&
        other.visit == visit &&
        other.invoicePeriod == invoicePeriod &&
        other.startDate == startDate &&
        other.endDate == endDate &&
        other.price == price &&
        other.packageType == packageType &&
        other.services == services &&
        other.dueFee == dueFee;
  }

  @override
  int get hashCode {
    return pid.hashCode ^
        addedDate.hashCode ^
        clientName.hashCode ^
        companyName.hashCode ^
        visit.hashCode ^
        invoicePeriod.hashCode ^
        startDate.hashCode ^
        endDate.hashCode ^
        price.hashCode ^
        packageType.hashCode ^
        services.hashCode ^
        dueFee.hashCode;
  }
}
