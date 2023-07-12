import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/src/config/size_config.dart';
import 'package:laundry/src/controller/detailondrycontroller.dart';
import 'package:laundry/src/controller/itemmodel.dart';
import 'package:laundry/src/services/assets.dart';

import '../../../router/constant.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  DetailLaundryController detail = Get.put(DetailLaundryController());
  var idlond = Get.arguments[0];
  ItemController item = Get.put(ItemController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    detail.detailLondry(idlond.toString());
    item.listitem(idlond.toString());
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
                  height: height(context) * 0.3,
                  // width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(icon5), fit: BoxFit.cover)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 200, right: 20),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black87,
                                blurRadius: 2,
                                offset: const Offset(0, 1))
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(() {
                              if (detail.isLoading.value) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                              return Text(
                                detail.tes.value.data![0].name.toString(),
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              );
                            }),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Image.asset(
                                  maps,
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(width: 10),
                                Obx(() {
                                  if (detail.isLoading.value) {
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }
                                  return Text(
                                    detail.tes.value.data![0].address
                                        .toString(),
                                    style: const TextStyle(
                                        fontSize: 15, color: Color(0xFF717171)),
                                  );
                                })
                              ],
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              'Katalog Satuan',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 15),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 25, right: 25, top: 10, bottom: 10),
                              // height: 150,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black87,
                                      blurRadius: 2,
                                      offset: const Offset(0, 1))
                                ],
                              ),
                              child: Obx(() {
                                if (item.isLoading.value) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                                return ListView.builder(
                                    itemCount: 2,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              baju,
                                              height: 40,
                                              width: 40,
                                              fit: BoxFit.fill,
                                            ),
                                            SizedBox(width: 10),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Color(0xFF95DED9),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Center(
                                                  child: Text(
                                                    '${item.tes.value.data![index].name} : Rp ${item.tes.value.data![index].pricePcs}',
                                                    style: const TextStyle(
                                                        fontSize: 17,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    });
                              }),
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              'Katalog Kiloan',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 15),
                            Obx(() {
                              if (detail.isLoading.value) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                              return Row(
                                children: [
                                  const Text(
                                    'Harga Perkilo :',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    detail.tes.value.data![0].priceKilo
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              );
                            }),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              'Description',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Obx(() {
                              if (detail.isLoading.value) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                              return Text(
                                detail.tes.value.data![0].description!,
                                style: const TextStyle(
                                    fontSize: 17, color: Color(0xFF717171)),
                              );
                            }),
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, bottom: 15),
                                child: InkWell(
                                  onTap: () => Get.toNamed(keranjangRoute),
                                  child: Container(
                                    height: 50,
                                    // width: 350,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF51D0D0),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        'Tambah ke Keranjang',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
