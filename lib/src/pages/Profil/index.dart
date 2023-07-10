import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/src/router/constant.dart';
import 'package:laundry/src/services/assets.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Color(0xFF95DED9)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 30),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35, left: 10),
                          child: Text(
                            'Profile',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 300),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black87,
                                    blurRadius: 2,
                                    offset: const Offset(0, 1)),
                              ],
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Container(
                              child: Row(
                                children: [
                                  Image.asset(user),
                                  SizedBox(width: 5),
                                  Text(
                                    'Username',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF51D0D0)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        InkWell(
                          onTap: () => Get.toNamed(loginRoute),
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Color(0xFF51D0D0),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                'Log Out',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
