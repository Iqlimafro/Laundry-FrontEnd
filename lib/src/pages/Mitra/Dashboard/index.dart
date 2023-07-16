import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/src/controller/ordermitracontroller.dart';
import 'package:laundry/src/controller/usercontroller.dart';
import 'package:laundry/src/router/constant.dart';
import 'package:laundry/src/services/assets.dart';
// import 'package:laundry/src/services/assets.dart';
// import 'package:laundry/src/services/assets.dart';

class MitraDashboard extends StatefulWidget {
  const MitraDashboard({super.key});

  @override
  State<MitraDashboard> createState() => _MitraDashboardState();
}

class _MitraDashboardState extends State<MitraDashboard> {
  //
  //  selectedRadio;
  UserController userdash = Get.put(UserController());
  OrderMitraController order = Get.put(OrderMitraController());

  @override
  void initState() {
    super.initState();
    userdash.getuser().then((value) {
      order.ordermitra(userdash.user.value.id.toString());
    });
  }

  // setSelectedRadio(int val) {
  //   setState(() {
  //     selectedRadio = val;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 270,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xFF95DED9),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40))),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 25),
                          Text(
                            'Hello, User',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Welcome to Wangi',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              InkWell(
                                onTap: () => Get.toNamed(profilRoute),
                                child: Icon(
                                  Icons.supervised_user_circle_sharp,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 5),
                              Obx(() {
                                if (userdash.isLoading.value) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                                return Text(
                                  userdash.user.value.username!,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                );
                              }),
                            ],
                          ),
                          SizedBox(height: 10),
                          Container(
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                // Icon(Icons.search),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  width: 190,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Cari Laundry",
                                        border: InputBorder.none),
                                  ),
                                ),
                                Spacer(),
                                Icon(Icons.search),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Obx(() {
                  if (order.isLoading.value) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: order.order.value.data!.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black87,
                                      blurRadius: 2,
                                      offset: Offset(0, 1))
                                ],
                                borderRadius: BorderRadius.circular(15)),
                            child: InkWell(
                              onTap: () =>
                                  Get.toNamed(detailMiraRoute, arguments: [
                                order.order.value.data![index].id,
                                order.order.value.data![index].weight,
                                order.order.value.data![index].status,
                                order.order.value.data![index].user!.address,
                                order.order.value.data![index].user!.username,
                                order.order.value.data![index].type,
                                
                              ]),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 15, right: 15, top: 10),
                                child: Column(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            InkWell(
                                                onTap: () =>
                                                    Get.toNamed(userRoute),
                                                child: Image.asset(user)),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  order.order.value.data![index]
                                                      .user!.username!,
                                                  style: const TextStyle(
                                                      fontSize: 21,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  children: [
                                                    Container(
                                                      height: 35,
                                                      width: 90,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Color(0xFF95DED9),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      25)),
                                                      child: const Center(
                                                        child: Text(
                                                          'Per KG',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 7,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          'Jasa:',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 16),
                                                        ),
                                                        const SizedBox(
                                                          width: 7,
                                                        ),
                                                        Text(
                                                          order
                                                              .order
                                                              .value
                                                              .data![index]
                                                              .pickup!,
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .blue,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 16),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  children: [
                                                    const Text(
                                                      'Status:',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16),
                                                    ),
                                                    const SizedBox(
                                                      width: 7,
                                                    ),
                                                    Text(
                                                      order.order.value
                                                          .data![index].status!,
                                                      style: const TextStyle(
                                                          color: Colors.green,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  children: [
                                                    const Text(
                                                      'Berat:',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16),
                                                    ),
                                                    const SizedBox(
                                                      width: 7,
                                                    ),
                                                    Text(
                                                      '${order.order.value.data![index].weight!} KG',
                                                      style: const TextStyle(
                                                          // color: Colors.green,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  children: [
                                                    const Text(
                                                      'Total Harga:',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16),
                                                    ),
                                                    const SizedBox(
                                                      width: 7,
                                                    ),
                                                    Text(
                                                      'Rp. ${order.order.value.data![index].totalAmount!}',
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                              ],
                                            ),
                                          ],
                                        ),
                                        // Row(
                                        //   children: [
                                        //     Container(
                                        //       decoration: BoxDecoration(
                                        //           borderRadius:
                                        //               BorderRadius.circular(12),
                                        //           color: order
                                        //                       .order
                                        //                       .value
                                        //                       .data![index]
                                        //                       .status ==
                                        //                   'Diproses'
                                        //               ? Colors.blue
                                        //               : Colors.grey),
                                        //       child:  Padding(
                                        //         padding:const EdgeInsets.all(8.0),
                                        //         child: Text(
                                        //           'Dicuci',
                                        //           style: const TextStyle(
                                        //               color: Colors.white,
                                        //               fontWeight: FontWeight.w500,
                                        //               fontSize: 17),
                                        //         ),
                                        //       ),
                                        //     )
                                        //   ],
                                        // )
                                      ],
                                    ),
                                    // SizedBox(height: 5),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      });
                }),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
