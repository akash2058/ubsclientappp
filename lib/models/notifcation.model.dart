// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class NotificationModel {
  String notification_msg;
  String tid;
  String notification_type;
  String notification_status;
  String accept_status;
  String notification_date;
  String? cimID;
  NotificationModel({
    required this.notification_msg,
    required this.tid,
    required this.notification_type,
    required this.notification_status,
    required this.accept_status,
    required this.notification_date,
    this.cimID,
  });

  NotificationModel copyWith({
    String? notification_msg,
    String? tid,
    String? notification_type,
    String? notification_status,
    String? accept_status,
    String? notification_date,
    String? cimID,
  }) {
    return NotificationModel(
      notification_msg: notification_msg ?? this.notification_msg,
      tid: tid ?? this.tid,
      notification_type: notification_type ?? this.notification_type,
      notification_status: notification_status ?? this.notification_status,
      accept_status: accept_status ?? this.accept_status,
      notification_date: notification_date ?? this.notification_date,
      cimID: cimID ?? this.cimID,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notification_msg': notification_msg,
      'tid': tid,
      'notification_type': notification_type,
      'notification_status': notification_status,
      'accept_status': accept_status,
      'notification_date': notification_date,
      'cimID': cimID,
    };
  }

  factory NotificationModel.fromMap(Map<String, dynamic> map) {
    return NotificationModel(
      notification_msg: map['notification_msg'] as String,
      tid: map['tid'] as String,
      notification_type: map['notification_type'] as String,
      notification_status: map['notification_status'] as String,
      accept_status: map['accept_status'] as String,
      notification_date: map['notification_date'] as String,
      cimID: map['cimID'] != null ? map['cimID'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory NotificationModel.fromJson(String source) =>
      NotificationModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NotificationModel(notification_msg: $notification_msg, tid: $tid, notification_type: $notification_type, notification_status: $notification_status, accept_status: $accept_status, notification_date: $notification_date, cimID: $cimID)';
  }

  @override
  bool operator ==(covariant NotificationModel other) {
    if (identical(this, other)) return true;

    return other.notification_msg == notification_msg &&
        other.tid == tid &&
        other.notification_type == notification_type &&
        other.notification_status == notification_status &&
        other.accept_status == accept_status &&
        other.notification_date == notification_date &&
        other.cimID == cimID;
  }

  @override
  int get hashCode {
    return notification_msg.hashCode ^
        tid.hashCode ^
        notification_type.hashCode ^
        notification_status.hashCode ^
        accept_status.hashCode ^
        notification_date.hashCode ^
        cimID.hashCode;
  }
}
