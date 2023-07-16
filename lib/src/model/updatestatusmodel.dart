import 'dart:convert';

UpdateModel updatestatusFromJson(String str) =>
    UpdateModel.fromJson(json.decode(str));

String updatestatusToJson(UpdateModel data) => json.encode(data.toJson());

class UpdateModel {
  int? status;
  String? message;
  Data? data;

  UpdateModel({this.status, this.message, this.data});

  UpdateModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? type;
  String? pickup;
  String? status;
  String? weight;
  // String? totalAmount;
  String? userId;
  String? laundryId;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.type,
      this.pickup,
      this.status,
      this.weight,
      // this.totalAmount,
      this.userId,
      this.laundryId,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    pickup = json['pickup'];
    status = json['status'];
    weight = json['weight'];
    // totalAmount = json['total_amount'];
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
    // data['total_amount'] = this.totalAmount;
    data['user_id'] = this.userId;
    data['laundry_id'] = this.laundryId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
