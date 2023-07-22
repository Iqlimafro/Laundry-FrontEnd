import 'dart:convert';

ListLaundryModel listlondryFromJson(String str) =>
    ListLaundryModel.fromJson(json.decode(str));

String listlondryToJson(ListLaundryModel data) => json.encode(data.toJson());

class ListLaundryModel {
  int? code;
  String? message;
  List<Londry>? data;

  ListLaundryModel({this.code, this.message, this.data});

  ListLaundryModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Londry>[];
      json['data'].forEach((v) {
        data!.add(new Londry.fromJson(v));
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

class Londry {
  int? id;
  String? name;
  String? address;
  String? description;
  String? priceKilo;
  String? image;
  String? userId;
  String? createdAt;
  String? updatedAt;
  Users? users;

  Londry(
      {this.id,
      this.name,
      this.address,
      this.description,
      this.priceKilo,
      this.image,
      this.userId,
      this.createdAt,
      this.updatedAt,
      this.users});

  Londry.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    address = json['address'];
    description = json['description'];
    priceKilo = json['price_kilo'];
    image = json['image'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    users = json['users'] != null ? new Users.fromJson(json['users']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['address'] = this.address;
    data['description'] = this.description;
    data['price_kilo'] = this.priceKilo;
    data['image'] = this.image;
    data['user_id'] = this.userId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.users != null) {
      data['users'] = this.users!.toJson();
    }
    return data;
  }
}

class Users {
  int? id;
  String? username;
  String? address;
  String? phone;
  String? role;
  String? createdAt;
  String? updatedAt;

  Users(
      {this.id,
      this.username,
      this.address,
      this.phone,
      this.role,
      this.createdAt,
      this.updatedAt});

  Users.fromJson(Map<String, dynamic> json) {
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
