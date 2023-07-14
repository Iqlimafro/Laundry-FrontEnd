import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/src/config/size_config.dart';
import 'package:laundry/src/controller/transaksicontroller.dart';
import 'package:laundry/src/controller/usercontroller.dart';
import 'package:laundry/src/router/constant.dart';
import 'package:laundry/src/services/assets.dart';

import '../../config/constants_config.dart';

class Diterima extends StatefulWidget {
  const Diterima({super.key});

  @override
  State<Diterima> createState() => _DiterimaState();
}

class _DiterimaState extends State<Diterima> {
  TransaksiController transaksi = Get.put(TransaksiController());
  UserController user = Get.put(UserController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    user.getuser().then((value) {
      transaksi.getTransaksi(user.user.value.id.toString());
    });
  }

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
                    decoration: const BoxDecoration(
                        color: Color(0xFF95DED9),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25))),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 18, top: 20),
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
                        Container(
                          height: 50,
                          // width: width(context),
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1,
                                  offset: const Offset(0, 1))
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 2, bottom: 2, left: 20),
                                child: Text(
                                  'Search Order',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 17),
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
                        SizedBox(height: 15),
                        // Padding(
                        //   padding: EdgeInsets.only(left: 30, right: 30),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Container(
                        //         decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(10),
                        //             color: Color(0xFF95DED9)),
                        //         child: const Padding(
                        //           padding: EdgeInsets.only(
                        //               left: 10, right: 10, top: 8, bottom: 8),
                        //           child: Center(
                        //             child: Text(
                        //               'Diterima',
                        //               style: TextStyle(
                        //                   fontSize: 15, color: Colors.white),
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        //       const SizedBox(width: 15),
                        //       InkWell(
                        //         onTap: () => Get.toNamed(diprosesRoute),
                        //         child: Container(
                        //           decoration: BoxDecoration(
                        //               borderRadius: BorderRadius.circular(10),
                        //               boxShadow: const [
                        //                 BoxShadow(
                        //                   color: Color(0xFF51D0D0),
                        //                   blurRadius: 1,
                        //                 )
                        //               ],
                        //               color: Colors.white),
                        //           child: const Padding(
                        //             padding: EdgeInsets.only(
                        //                 left: 10, right: 10, top: 8, bottom: 8),
                        //             child: Center(
                        //               child: Text(
                        //                 'Diproses',
                        //                 style: TextStyle(
                        //                     fontSize: 15,
                        //                     color: Color(0xFF51D0D0)),
                        //               ),
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        //       const SizedBox(width: 15),
                        //       InkWell(
                        //         onTap: () => Get.toNamed(selesaiRoute),
                        //         child: Container(
                        //           decoration: BoxDecoration(
                        //               borderRadius: BorderRadius.circular(10),
                        //               boxShadow: const [
                        //                 BoxShadow(
                        //                   color: Color(0xFF51D0D0),
                        //                   blurRadius: 1,
                        //                 )
                        //               ],
                        //               color: Colors.white),
                        //           child: const Padding(
                        //             padding: EdgeInsets.only(
                        //                 left: 10, right: 10, top: 8, bottom: 8),
                        //             child: Center(
                        //               child: Text(
                        //                 'Selesai',
                        //                 style: TextStyle(
                        //                     fontSize: 15,
                        //                     color: Color(0xFF51D0D0)),
                        //               ),
                        //             ),
                        //           ),
                        //         ),
                        //       )
                        //     ],
                        //   ),
                        // ),

                        Container(
                          height: height(context) * 0.7,
                          child: Obx(() {
                            if (transaksi.isLoading.value) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            return ListView.builder(
                                itemCount: transaksi.user.value.data!.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Container(
                                      // height: 150,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 1,
                                                offset: const Offset(0, 1))
                                          ]),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(
                                                  left: 75, top: 20),
                                              child: Text(
                                                  'NO ANTRIAN • ${formatDate(transaksi.user.value.data![index].createdAt!)}'),
                                            ),
                                            SizedBox(height: 15),
                                            Row(
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 15),
                                                  child: Image.asset(icon3),
                                                ),
                                                SizedBox(width: 13),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Laundry ${transaksi.user.value.data![index].status}',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color:
                                                              Color(0xFF048F98),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(height: 10),
                                                    SizedBox(
                                                      width: SizeConfig
                                                              .blockSizeVertical! *
                                                          30,
                                                      child: Text(
                                                        'Mohon ditunggu untuk segera diproses oleh mitra',
                                                        style: TextStyle(
                                                            fontSize: 17,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          }),
                        ),
                        SizedBox(height: 40),
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
