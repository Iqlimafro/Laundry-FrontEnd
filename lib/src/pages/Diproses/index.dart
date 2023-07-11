import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/src/router/constant.dart';
import 'package:laundry/src/services/assets.dart';

class Diproses extends StatefulWidget {
  const Diproses({super.key});

  @override
  State<Diproses> createState() => _DiprosesState();
}

class _DiprosesState extends State<Diproses> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xFF95DED9),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18, top: 20),
                      child: Text(
                        'Tracking',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 72, left: 20, right: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Container(
                                height: 60,
                                width: 400,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black87,
                                        blurRadius: 2,
                                        offset: const Offset(0, 1))
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 2, bottom: 2, left: 20),
                                      child: Text(
                                        'Search Product',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 20),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 2, bottom: 2, right: 20),
                                      child: Icon(Icons.search),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () => Get.toNamed(diterimaRoute),
                                child: Container(
                                  height: 25,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xFF51D0D0),
                                          blurRadius: 1,
                                        )
                                      ],
                                      color: Colors.white),
                                  child: Center(
                                    child: Text(
                                      'Diterima',
                                      style: TextStyle(
                                          fontSize: 15, color: Color(0xFF51D0D0)),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 15),
                              Container(
                                  height: 25,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFF95DED9)),
                                  child: Center(
                                    child: Text(
                                      'Diproses',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  ),
                                ),
                              SizedBox(width: 15),
                              InkWell(
                                onTap: () => Get.toNamed(selesaiRoute),
                                child: Container(
                                  height: 25,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xFF51D0D0),
                                          blurRadius: 1,
                                        )
                                      ],
                                      color: Colors.white),
                                  child: Center(
                                    child: Text(
                                      'Selesai',
                                      style: TextStyle(
                                          fontSize: 15, color: Color(0xFF51D0D0)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                        Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black87,
                                    blurRadius: 2,
                                    offset: const Offset(0, 1))
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 75, top: 20),
                                child: Text('NO ANTRIAN • 02 OKTOBER 2023'),
                              ),
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Image.asset(icon3),
                                  ),
                                  SizedBox(width: 13),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Laundry Sedang DiProses',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xFF048F98),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Mohon bersabar ini ujian',
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
