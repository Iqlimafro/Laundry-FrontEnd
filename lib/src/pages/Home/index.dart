import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:laundry/src/router/constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Positioned(
            left: -95,
            top: -76,
            child: Container(
              width: 275.39,
              height: 256,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 56,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: ShapeDecoration(
                        color: Color(0x4C6AE0D9),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 82,
                    top: 0,
                    child: Container(
                      width: 193.39,
                      height: 192.45,
                      decoration: ShapeDecoration(
                        color: Color(0x4C06A69A),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 180,
            top: 607,
            child: Container(
              width: 281.39,
              height: 256,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 56,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: ShapeDecoration(
                        color: Color(0x4C6AE0D9),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 88,
                    top: 0,
                    child: Container(
                      width: 193.39,
                      height: 192.45,
                      decoration: ShapeDecoration(
                        color: Color(0x4C06A69A),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 126,
            top: 108,
            child: Container(
              width: 107,
              height: 107,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/delivery1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 146,
            top: 215,
            child: Text(
              'Wangi',
              style: TextStyle(
                color: Color(0xFF5DB0A8),
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
              left: 50,
              top: 360,
              child: InkWell(
                onTap: () => Get.toNamed(registerRoute),
                child: Container(
                  width: 267,
                  height: 41,
                  decoration: ShapeDecoration(
                    color: Color(0xFF51D0D0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Daftar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              )),
          Positioned(
              left: 50,
              top: 420,
              child: InkWell(
                onTap: () => Get.toNamed(loginRoute),
                child: Container(
                  width: 267,
                  height: 41,
                  decoration: ShapeDecoration(
                    color: Color(0xFF51D0D0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    ));
  }
}
