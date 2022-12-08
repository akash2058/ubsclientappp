// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class NotificationModel {
  String? notifcationmsg;
  String? transactionID;
  String notification_type;
  String notification_status;
  String accept_status;
  String? notiffcation_date;
  String? cimID;
  NotificationModel({
    this.notifcationmsg,
    this.transactionID,
    required this.notification_type,
    required this.notification_status,
    required this.accept_status,
    this.notiffcation_date,
    this.cimID,
  });

  NotificationModel copyWith({
    String? notifcationmsg,
    String? transactionID,
    String? notification_type,
    String? notification_status,
    String? accept_status,
    String? notiffcation_date,
    String? cimID,
  }) {
    return NotificationModel(
      notifcationmsg: notifcationmsg ?? this.notifcationmsg,
      transactionID: transactionID ?? this.transactionID,
      notification_type: notification_type ?? this.notification_type,
      notification_status: notification_status ?? this.notification_status,
      accept_status: accept_status ?? this.accept_status,
      notiffcation_date: notiffcation_date ?? this.notiffcation_date,
      cimID: cimID ?? this.cimID,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notifcationmsg': notifcationmsg,
      'transactionID': transactionID,
      'notification_type': notification_type,
      'notification_status': notification_status,
      'accept_status': accept_status,
      'notiffcation_date': notiffcation_date,
      'cimID': cimID,
    };
  }

  factory NotificationModel.fromMap(Map<String, dynamic> map) {
    return NotificationModel(
      notifcationmsg: map['notifcationmsg'] != null
          ? map['notifcationmsg'] as String
          : null,
      transactionID:
          map['transactionID'] != null ? map['transactionID'] as String : null,
      notification_type: map['notification_type'] as String,
      notification_status: map['notification_status'] as String,
      accept_status: map['accept_status'] as String,
      notiffcation_date: map['notiffcation_date'] != null
          ? map['notiffcation_date'] as String
          : null,
      cimID: map['cimID'] != null ? map['cimID'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory NotificationModel.fromJson(String source) =>
      NotificationModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NotificationModel(notifcationmsg: $notifcationmsg, transactionID: $transactionID, notification_type: $notification_type, notification_status: $notification_status, accept_status: $accept_status, notiffcation_date: $notiffcation_date, cimID: $cimID)';
  }

  @override
  bool operator ==(covariant NotificationModel other) {
    if (identical(this, other)) return true;

    return other.notifcationmsg == notifcationmsg &&
        other.transactionID == transactionID &&
        other.notification_type == notification_type &&
        other.notification_status == notification_status &&
        other.accept_status == accept_status &&
        other.notiffcation_date == notiffcation_date &&
        other.cimID == cimID;
  }

  @override
  int get hashCode {
    return notifcationmsg.hashCode ^
        transactionID.hashCode ^
        notification_type.hashCode ^
        notification_status.hashCode ^
        accept_status.hashCode ^
        notiffcation_date.hashCode ^
        cimID.hashCode;
  }
}
