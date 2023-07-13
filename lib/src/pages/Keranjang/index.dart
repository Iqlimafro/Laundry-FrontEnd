import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/src/controller/ordercontroller.dart';
import 'package:laundry/src/controller/usercontroller.dart';
import 'package:laundry/src/pages/navbar.dart';
import 'package:laundry/src/router/constant.dart';
import 'package:laundry/src/services/assets.dart';

class Keranjang extends StatefulWidget {
  const Keranjang({super.key});

  @override
  State<Keranjang> createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
  OrderController order = Get.put(OrderController());
  TextEditingController deskripsi = TextEditingController();
  UserController user = Get.put(UserController());
  var idLond = Get.arguments[0];
  var nama = Get.arguments[1];
  var gambar = Get.arguments[2];
  var harga = Get.arguments[3];
  String opsi = '';
  int value = 0; // The initial value
  Color buttonColor = Colors.grey; //
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    user.getuser();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          
          children: [
            Stack(
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Color(0xFF95DED9),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 18, top: 20),
                    child: Text(
                      'Order',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 72, left: 20, right: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Color(0xFF048F98),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                          child: Text(
                            'Keranjang Anda',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        // height: 230,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black87,
                                  blurRadius: 2,
                                  offset: Offset(0, 1))
                            ],
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: 15, right: 15, top: 10),
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.network(
                                        gambar,
                                        height: 50,
                                      ),
                                      SizedBox(width: 13),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            nama,
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 10),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              // Container(
                              //   padding: EdgeInsets.symmetric(horizontal: 75),
                              //   child: Row(
                              //     children: [
                              //       ButtonBar(
                              //         children: [
                              //           Radio(
                              //             value: 1,
                              //             groupValue: 0,
                              //             activeColor: Colors.green,
                              //             onChanged: (val) {
                              //               print("Radio $val");
                              //             },
                              //           ),
                              //         ],
                              //       ),
                              //       Image.asset(
                              //         baju,
                              //       ),
                              //       ButtonBar(
                              //         children: [
                              //           Radio(
                              //             value: 2,
                              //             groupValue: 0,
                              //             activeColor: Colors.green,
                              //             onChanged: (val) {
                              //               print("Radio $val");
                              //             },
                              //           ),
                              //         ],
                              //       ),
                              //       Image.asset(
                              //         celana,
                              //       )
                              //     ],
                              //   ),
                              // ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, right: 30),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30),
                                        child: Text(
                                          'Deskripsi pakaian',
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 60, right: 50),
                                child: TextField(
                                  controller: deskripsi,
                                  keyboardType: TextInputType.text,
                                  decoration: const InputDecoration(
                                    hintText: 'Masukkan Deskripsi',

                                    // suffix: InkWell(
                                    //   onTap: () {
                                    //     setState(() {});
                                    //   },
                                    // )
                                    // errorText: validate
                                    //     ? 'Email Tidak boleh kosong'
                                    //     : null
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Jemput',
                                      groupValue: opsi,
                                      onChanged: (value) {
                                        setState(() {
                                          opsi = value!;
                                        });
                                      },
                                    ),
                                    const Text(
                                      'Jemput',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                    Radio<String>(
                                      value: 'Antar',
                                      groupValue: opsi,
                                      onChanged: (value) {
                                        setState(() {
                                          opsi = value!;
                                        });
                                      },
                                    ),
                                    const Text(
                                      'Antar',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, right: 30),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30),
                                        child: Text(
                                          'Berat Pakaian',
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 60),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        if (value > 0) {
                                          setState(() {
                                            value--;
                                            if (value == 1) {
                                              buttonColor = Colors.blue;
                                            }
                                          });
                                        }
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: value <= 0
                                                ? Colors.grey
                                                : blueMain),
                                        child: const Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Container(
                                      width: 50,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "${value.toString()} Kg", // Multiply the value by 5000
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          value++;
                                          if (value == 1) {
                                            buttonColor = Colors.blue;
                                          }
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: blueMain),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 60),
                                child: Row(
                                  children: [
                                    Text(
                                      'Total : ${value * int.parse(harga)}',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),

                              const SizedBox(
                                height: 14,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: InkWell(
                                  onTap: () {
                                    var total = value * int.parse(harga);
                                    order.order(
                                        deskripsi.text,
                                        opsi,
                                        value.toString(),
                                        total.toString(),
                                        user.user.value.id.toString(),
                                        idLond.toString());
                                  },
                                  child: Container(
                                    height: 35,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF048F98),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Center(
                                      child: Text(
                                        'ORDER',
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        bottomNavigationBar: Navbar(),
      ),
    );
  }
}
