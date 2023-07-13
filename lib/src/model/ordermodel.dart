import 'dart:convert';

OrderModel orderFromJson(String str) => OrderModel.fromJson(json.decode(str));

String orderToJson(OrderModel data) => json.encode(data.toJson());

class OrderModel {
  int? code;
  String? message;
  Data? data;

  OrderModel({this.code, this.message, this.data});

  OrderModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? type;
  String? pickup;
  String? weight;
  String? status;
  String? totalAmount;
  String? userId;
  String? laundryId;
  String? updatedAt;
  String? createdAt;
  int? id;

  Data(
      {this.type,
      this.pickup,
      this.weight,
      this.status,
      this.totalAmount,
      this.userId,
      this.laundryId,
      this.updatedAt,
      this.createdAt,
      this.id});

  Data.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    pickup = json['pickup'];
    weight = json['weight'];
    status = json['status'];
    totalAmount = json['total_amount'];
    userId = json['user_id'];
    laundryId = json['laundry_id'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['pickup'] = this.pickup;
    data['weight'] = this.weight;
    data['status'] = this.status;
    data['total_amount'] = this.totalAmount;
    data['user_id'] = this.userId;
    data['laundry_id'] = this.laundryId;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}
