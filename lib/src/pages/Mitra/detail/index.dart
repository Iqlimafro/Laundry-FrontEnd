import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/src/config/size_config.dart';
import 'package:laundry/src/controller/detailondrycontroller.dart';
import 'package:laundry/src/controller/londrycontroller.dart';
import 'package:laundry/src/controller/updatestatuscontroller.dart';
import 'package:laundry/src/controller/usercontroller.dart';
import 'package:laundry/src/router/constant.dart';
import 'package:laundry/src/services/assets.dart';

class DetailMitra extends StatefulWidget {
  const DetailMitra({super.key});

  @override
  State<DetailMitra> createState() => _DetailMitraState();
}

class _DetailMitraState extends State<DetailMitra> {
  var idOder = Get.arguments[0];
  var weight = Get.arguments[1];
  var status = Get.arguments[2];
  var address = Get.arguments[3];
  var username = Get.arguments[4];
  var type = Get.arguments[5];
  var idUser = Get.arguments[6];
  UserController user = Get.put(UserController());
  DetailLaundryController detail = Get.put(DetailLaundryController());
  UpdateController update = Get.put(UpdateController());
  late TextEditingController editCons;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    detail.detailLondry(idUser.toString());
    editCons = TextEditingController(text: weight);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueMain,
        centerTitle: true,
        title: Text('Detail'),
        elevation: 0,
      ),
      body: Container(
          child: ListView(
        children: [
          Stack(
            children: [
              Container(
                color: blueMain,
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Container(
                  // height: height(context) * 0.3,
                  width: width(context),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          username,
                          style: TextStyle(
                              color: blueMain,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          address,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          color: Colors.grey,
                          height: 2,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "Deskripsi",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          type,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(),
                              const Text(
                                'Edit weight',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        TextField(
                          controller: editCons,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            hintText: 'Weight',

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
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (status == 'Diproses') {
                        update.updateStat(
                            idOder.toString(),
                            editCons.text,
                            detail.tes.value.data![0].priceKilo.toString(),
                            "Dicuci");
                      } else {}
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color:
                                status == 'Diproses' ? blueMain : Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'Dicuci',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 17),
                            ),
                          ),
                        )),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (status == 'Dicuci') {
                        update.updateStat(
                            idOder.toString(),
                            editCons.text,
                            detail.tes.value.data![0].priceKilo.toString(),
                            "Selesai");
                      } else if (status == 'Selesai') {
                      } else {}
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: status == 'Dicuci' ? blueMain : Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'Selesai',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 17),
                            ),
                          ),
                        )),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
