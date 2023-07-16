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
import '../model/detaillondrymodel.dart';
import '../model/itemmodel.dart';
import '../model/listlondrymodel.dart';
import '../model/loginmodel.dart';
import '../model/ordermitramodel.dart';
import '../model/ordermodel.dart';
import '../model/transaksimodel.dart';
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
  Future detaillondry(String id) async {
    final token = await getToken();
    final response = await BaseClient()
        .get(globalApi, '/api/get-laundry/show/$id', "")
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
      var note = detaillondryFromJson(response);
      return note;
    } else {
      return null;
    }
  }

  Future listitem(String id) async {
    final token = await getToken();
    final response = await BaseClient()
        .get(globalApi, '/api/get-items/show/$id', "")
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
      var note = itemFromJson(response);
      return note;
    } else {
      return null;
    }
  }

  Future transaksi(String id) async {
    final token = await getToken();
    final response = await BaseClient()
        .get(globalApi, '/api/get-order/show/$id', "")
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
      var note = transaksiFromJson(response);
      return note;
    } else {
      return null;
    }
  }
  Future mitraorder(String id) async {
    final token = await getToken();
    final response = await BaseClient()
        .get(globalApi, '/api/get-order/laundry/$id', "")
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
      var note = mitraorderFromJson(response);
      return note;
    } else {
      return null;
    }
  }
  Future<OrderModel?> order(String deskripsi, String metode, String berat,
      String jumlah, String userid, String londryid) async {
    dynamic body = ({
      "type": deskripsi,
      "pickup": metode,
      "weight": berat,
      "status": "Diproses",
      "total_amount": jumlah,
      "user_id": userid,
      "laundry_id": londryid
    });
    final response = await BaseClient()
        .post(globalApi, '/api/add-order', body, "")
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
      var produk = orderFromJson(response);
      return produk;
    } else {
      return null;
    }
  }
}