import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:laundry/src/services/app_exception.dart';
import 'package:laundry/src/services/base_client.dart';
import 'package:laundry/src/services/base_controller.dart';

import '../config/env.dart';
import '../config/preference.dart';
import '../model/listlondrymodel.dart';
import '../model/loginmodel.dart';
import '../model/usermodel.dart';

class ApiService extends GetConnect with BaseController{
  Future<LoginModel?> login(String username, String password) async {
    dynamic body = ({"username": username, "password": password});
    final response = await BaseClient()
        .post(globalApi, '/api/login', body, "")
        .catchError((error) {
      if (error is BadRequestException) {
        var apiError = json.decode(error.message!);
        Get.rawSnackbar(message: apiError["message"]);
      } else if (error is UnAuthorizedException) {
        var apiError = json.decode(error.message!);
        Get.rawSnackbar(message: apiError["message"]);
      } else {
        handleError(error);
      }
    });
    print(response);
    if (response != null) {
      var produk = loginFromJson(response);
      return produk;
    } else {
      return null;
    }
  }


  Future getUser() async {
    final token = await getToken();
    final response = await BaseClient()
        .get(globalApi, '/api/user', token)
        .catchError((error) {
      if (error is BadRequestException) {
        var apiError = json.decode(error.message!);
        // print(error.message!);
        Get.rawSnackbar(message: apiError["message"]);
      } else {
        handleError(error);
      }
    });
    print(response);
    if (response != null) {
      var note = userFromJson(response);
      return note;
    } else {
      return null;
    }
  }

  Future gerlondry() async {
    final token = await getToken();
    final response = await BaseClient()
        .get(globalApi, '/api/get-laundry', "")
        .catchError((error) {
      if (error is BadRequestException) {
        var apiError = json.decode(error.message!);
        // print(error.message!);
        Get.rawSnackbar(message: apiError["message"]);
      } else {
        handleError(error);
      }
    });
    print(response);
    if (response != null) {
      var note = listlondryFromJson(response);
      return note;
    } else {
      return null;
    }
  }
}