import 'dart:convert';

LoginModel loginFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  String? message;
  String? accessToken;

  LoginModel({this.message, this.accessToken});

  LoginModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    accessToken = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['access_token'] = this.accessToken;
    return data;
  }
}
