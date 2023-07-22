import 'dart:convert';

OrderMitraModel mitraorderFromJson(String str) =>
    OrderMitraModel.fromJson(json.decode(str));

String mitraorderToJson(OrderMitraModel data) => json.encode(data.toJson());

class OrderMitraModel {
  int? code;
  String? message;
  List<MitraOrder>? data;

  OrderMitraModel({this.code, this.message, this.data});

  OrderMitraModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <MitraOrder>[];
      json['data'].forEach((v) {
        data!.add(new MitraOrder.fromJson(v));
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

class MitraOrder {
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
  User? user;

  MitraOrder(
      {this.id,
      this.type,
      this.pickup,
      this.status,
      this.weight,
      this.totalAmount,
      this.userId,
      this.laundryId,
      this.createdAt,
      this.updatedAt,
      this.user});

  MitraOrder.fromJson(Map<String, dynamic> json) {
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
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
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
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? username;
  String? address;
  String? phone;
  String? role;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
      this.username,
      this.address,
      this.phone,
      this.role,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    address = json['address'];
    phone = json['phone'];
    role = json['role'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['address'] = this.address;
    data['phone'] = this.phone;
    data['role'] = this.role;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
