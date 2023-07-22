import 'dart:convert';

DetailLaundryModel detaillondryFromJson(String str) =>
    DetailLaundryModel.fromJson(json.decode(str));

String detaillondryToJson(DetailLaundryModel data) =>
    json.encode(data.toJson());

class DetailLaundryModel {
  int? code;
  String? message;
  List<Detail>? data;

  DetailLaundryModel({this.code, this.message, this.data});

  DetailLaundryModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Detail>[];
      json['data'].forEach((v) {
        data!.add(new Detail.fromJson(v));
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

class Detail {
  int? id;
  String? name;
  String? address;
  String? description;
  String? priceKilo;
  String? image;
  String? userId;
  String? createdAt;
  String? updatedAt;

  Detail(
      {this.id,
      this.name,
      this.address,
      this.description,
      this.priceKilo,
      this.image,
      this.userId,
      this.createdAt,
      this.updatedAt});

  Detail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    address = json['address'];
    description = json['description'];
    priceKilo = json['price_kilo'];
    image = json['image'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
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
    return data;
  }
}
