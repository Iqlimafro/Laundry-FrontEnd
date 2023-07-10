import 'dart:async';

import 'package:flutter/material.dart';
// <<<<<<< HEAD
// import 'package:laundry/src/pages/Home/index.dart';
// import 'package:laundry/src/pages/Register/index.dart';
// import 'Login/index.dart';
// =======
import 'package:get/get.dart';
import 'package:laundry/src/config/preference.dart';
import 'package:laundry/src/router/constant.dart';
import 'package:laundry/src/services/assets.dart';
// >>>>>>> 6b0a1579532fc87613b49435aeef42e5a1a3bf24

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _init() {
    Timer(const Duration(seconds: 3), () {
      getPref();
    });
  }

  void getPref() async {
    String? token = await getToken();
    if (token != '' && token != null) {
      Get.offAndToNamed(mainRoute);
    } else {
      Get.offAndToNamed(registerRoute);
    }
  }

  @override
  void initState() {
    _init();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
// <<<<<<< HEAD
    // return Register();
// =======
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  logo,
                  // height: 200,
                  // width: 200,
                ),
                
              ),
              SizedBox(height: 15),
              Text(
                'Wangi',
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF5DB0A8),
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
      ),
    );
// >>>>>>> 6b0a1579532fc87613b49435aeef42e5a1a3bf24
  }
}