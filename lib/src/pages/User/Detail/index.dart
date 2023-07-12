import 'package:flutter/material.dart';
import 'package:laundry/src/config/size_config.dart';
import 'package:laundry/src/services/assets.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
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
                      height: 750,
                      width: 430,
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
                            Text(
                              'Launderette Cafe',
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Image.asset(
                                  maps,
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Kemiri Sewu - Pandaan -',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF717171)),
                                    ),
                                    Text(
                                      'Pasuruan',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF717171)),
                                    ),
                                    Text(
                                      'Kode pos 67156',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF717171)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 15),
                            Text(
                              'Katalog',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 15),
                            Container(
                              padding:
                                  EdgeInsets.only(left: 25, right: 25, top: 20),
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
                                ],
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        baju,
                                        height: 40,
                                        width: 40,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        height: 40,
                                        width: 140,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF95DED9),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                            'Satuan : Rp 2.000',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        height: 40,
                                        width: 140,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF95DED9),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                            'Satuan : Rp 2.000',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Image.asset(
                                        celana,
                                        height: 40,
                                        width: 40,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        height: 40,
                                        width: 140,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF95DED9),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                            'Satuan : Rp 2.000',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        height: 40,
                                        width: 140,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF95DED9),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                            'Satuan : Rp 2.000',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              'Description',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Snack kacang coklat kekinian cocok dikonsumsi',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFF717171)),
                            ),
                            Text(
                              'anak muda yang terbuat dari bahan',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFF717171)),
                            ),
                            Text(
                              'kacang pilihan',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFF717171)),
                            ),
                            SizedBox(height: 250),
                            Center(
                              child: Container(
                                height: 60,
                                width: 350,
                                decoration: BoxDecoration(
                                    color: Color(0xFF51D0D0),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    'Tambah ke Keranjang',
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
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
