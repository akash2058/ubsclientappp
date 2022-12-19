// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class HistoryModel {
  String t_id;
  String date_assigned;
  String kaam;
  String sub_kaam;
  String expert;
  String phone;
  String kaam_status;
  String fee;
  String? fee_staus;
  HistoryModel({
    required this.t_id,
    required this.date_assigned,
    required this.kaam,
    required this.sub_kaam,
    required this.expert,
    required this.phone,
    required this.kaam_status,
    required this.fee,
    this.fee_staus,
  });

  HistoryModel copyWith({
    String? t_id,
    String? date_assigned,
    String? kaam,
    String? sub_kaam,
    String? expert,
    String? phone,
    String? kaam_status,
    String? fee,
    String? fee_staus,
  }) {
    return HistoryModel(
      t_id: t_id ?? this.t_id,
      date_assigned: date_assigned ?? this.date_assigned,
      kaam: kaam ?? this.kaam,
      sub_kaam: sub_kaam ?? this.sub_kaam,
      expert: expert ?? this.expert,
      phone: phone ?? this.phone,
      kaam_status: kaam_status ?? this.kaam_status,
      fee: fee ?? this.fee,
      fee_staus: fee_staus ?? this.fee_staus,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      't_id': t_id,
      'date_assigned': date_assigned,
      'kaam': kaam,
      'sub_kaam': sub_kaam,
      'expert': expert,
      'phone': phone,
      'kaam_status': kaam_status,
      'fee': fee,
      'fee_staus': fee_staus,
    };
  }

  factory HistoryModel.fromMap(Map<String, dynamic> map) {
    return HistoryModel(
      t_id: map['t_id'] as String,
      date_assigned: map['date_assigned'] as String,
      kaam: map['kaam'] as String,
      sub_kaam: map['sub_kaam'] as String,
      expert: map['expert'] as String,
      phone: map['phone'] as String,
      kaam_status: map['kaam_status'] as String,
      fee: map['fee'] as String,
      fee_staus: map['fee_staus'] != null ? map['fee_staus'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory HistoryModel.fromJson(String source) =>
      HistoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HistoryModel(t_id: $t_id, date_assigned: $date_assigned, kaam: $kaam, sub_kaam: $sub_kaam, expert: $expert, phone: $phone, kaam_status: $kaam_status, fee: $fee, fee_staus: $fee_staus)';
  }

  @override
  bool operator ==(covariant HistoryModel other) {
    if (identical(this, other)) return true;

    return other.t_id == t_id &&
        other.date_assigned == date_assigned &&
        other.kaam == kaam &&
        other.sub_kaam == sub_kaam &&
        other.expert == expert &&
        other.phone == phone &&
        other.kaam_status == kaam_status &&
        other.fee == fee &&
        other.fee_staus == fee_staus;
  }

  @override
  int get hashCode {
    return t_id.hashCode ^
        date_assigned.hashCode ^
        kaam.hashCode ^
        sub_kaam.hashCode ^
        expert.hashCode ^
        phone.hashCode ^
        kaam_status.hashCode ^
        fee.hashCode ^
        fee_staus.hashCode;
  }
}
