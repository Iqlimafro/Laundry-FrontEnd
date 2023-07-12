import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/src/router/constant.dart';
import 'package:laundry/src/services/assets.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool validate = false;
  bool inHiddenPass = true;
  bool _isHidden = true;
  String? finalEmail;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: Column(
                      children: [
                        Image.asset(
                          logo,
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Wangi',
                          style: TextStyle(
                              fontSize: 30,
                              color: Color(0xFF5DB0A8),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 25),
                        Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 45,
                              color: Color(0xFF51D0D0),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 35),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Text(
                                  'Username',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: TextField(
                            controller: email,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                hintText: 'Masukkan Username Anda',

                                // suffix: InkWell(
                                //   onTap: () {
                                //     setState(() {});
                                //   },
                                // )
                                errorText: validate
                                    ? 'Email Tidak boleh kosong'
                                    : null),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: TextField(
                            // obscureText: _isHidden,
                            controller: email,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                hintText: 'Masukkan Email Anda',

                                // suffix: InkWell(
                                //   onTap: () {
                                //     setState(() {});
                                //   },
                                // )
                                errorText: validate
                                    ? 'Email Tidak boleh kosong'
                                    : null),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Text(
                                  'Password',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: TextField(
                            obscureText: _isHidden,
                            controller: password,
                            decoration: InputDecoration(
                                hintText: 'Masukkan Password Anda',
                                suffix: InkWell(
                                  onTap: () {
                                    setState(() {
                                      passToggle = !passToggle;
                                    });
                                  },
                                  child: Icon(passToggle
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                )),
                          ),
                        ),
                        SizedBox(height: 30),
                        InkWell(
                          onTap: () => Get.toNamed(loginRoute),
                          child: Container(
                            height: 60,
                            width: 380,
                            decoration: BoxDecoration(
                                color: Color(0xFF51D0D0),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                'Daftar',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Login",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            SizedBox(width: 5),
                            InkWell(
                              onTap: () => Get.toNamed(loginRoute),
                              child: const Text(
                                'Di Sini',
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xFF51D0D0)),
                              ),
                            )
                          ],
                        ),
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
