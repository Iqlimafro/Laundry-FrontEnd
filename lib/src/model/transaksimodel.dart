import 'dart:convert';

TransaksiModel transaksiFromJson(String str) =>
    TransaksiModel.fromJson(json.decode(str));

String transaksiToJson(TransaksiModel data) => json.encode(data.toJson());

class TransaksiModel {
  int? code;
  String? message;
  List<Transaksi>? data;

  TransaksiModel({this.code, this.message, this.data});

  TransaksiModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Transaksi>[];
      json['data'].forEach((v) {
        data!.add(new Transaksi.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Transaksi {
  int? id;
  String? type;
  String? pickup;
  String? status;
  String? weight;
  String? totalAmount;
  String? userId;
  String? laundryId;
  String? createdAt;
  String? updatedAt;

  Transaksi(
      {this.id,
      this.type,
      this.pickup,
      this.status,
      this.weight,
      this.totalAmount,
      this.userId,
      this.laundryId,
      this.createdAt,
      this.updatedAt});

  Transaksi.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    pickup = json['pickup'];
    status = json['status'];
    weight = json['weight'];
    totalAmount = json['total_amount'];
    userId = json['user_id'];
    laundryId = json['laundry_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['pickup'] = this.pickup;
    data['status'] = this.status;
    data['weight'] = this.weight;
    data['total_amount'] = this.totalAmount;
    data['user_id'] = this.userId;
    data['laundry_id'] = this.laundryId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
