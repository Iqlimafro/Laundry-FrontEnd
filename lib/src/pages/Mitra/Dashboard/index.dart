import 'package:flutter/material.dart';
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

  // @override
  // void initState() {
  //   super.initState();
  //   selectedRadio = 0;
  // }

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
                              Icon(
                                Icons.supervised_user_circle_sharp,
                                size: 30,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Username',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
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
                child: Column(
                  children: [
                    Container(
                      height: 35,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(0xFF048F98),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'Keranjang Anda',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 250,
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
                      child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Icon(
                                      Icons.close,
                                      color: Color(0xFF7F8C8D),
                                      size: 25,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(user),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Nama Customer',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Container(
                                              height: 35,
                                              width: 90,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFF95DED9),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25)),
                                              child: Center(
                                                child: Text(
                                                  'Satuan',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Container(
                                              height: 35,
                                              width: 90,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color(0xFF95DED9),
                                                      blurRadius: 2,
                                                      offset: Offset(0, 1))
                                                ],
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Per Kg',
                                                  style: TextStyle(
                                                      color: Color(0xFF95DED9),
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 75),
                              child: Row(
                                children: [
                                  ButtonBar(
                                    children: [
                                      Radio(
                                        value: 1,
                                        groupValue: 0,
                                        activeColor: Colors.green,
                                        onChanged: (val) {
                                          print("Radio $val");
                                        },
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    baju,
                                  ),
                                  ButtonBar(
                                    children: [
                                      Radio(
                                        value: 2,
                                        groupValue: 0,
                                        activeColor: Colors.green,
                                        onChanged: (val) {
                                          print("Radio $val");
                                        },
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    celana,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.only(left: 75),
                              child: Row(
                                children: [
                                  Text(
                                    'Jumlah',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xFF717171),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFADADAD),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                      child: Text(
                                        '-',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    '2',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF51D0D0),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                      child: Text(
                                        '+',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Total : 8.000',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 20),
                                  Container(
                                    height: 35,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF048F98),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Center(
                                      child: Text(
                                        'Terima',
                                        style: TextStyle(
                                            fontSize: 19,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 250,
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
                      child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Icon(
                                      Icons.close,
                                      color: Color(0xFF7F8C8D),
                                      size: 25,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(user),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Nama Customer',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Container(
                                              height: 35,
                                              width: 90,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFF95DED9),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25)),
                                              child: Center(
                                                child: Text(
                                                  'Satuan',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Container(
                                              height: 35,
                                              width: 90,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color(0xFF95DED9),
                                                      blurRadius: 2,
                                                      offset: Offset(0, 1))
                                                ],
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Per Kg',
                                                  style: TextStyle(
                                                      color: Color(0xFF95DED9),
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 75),
                              child: Row(
                                children: [
                                  ButtonBar(
                                    children: [
                                      Radio(
                                        value: 1,
                                        groupValue: 0,
                                        activeColor: Colors.green,
                                        onChanged: (val) {
                                          print("Radio $val");
                                        },
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    baju,
                                  ),
                                  ButtonBar(
                                    children: [
                                      Radio(
                                        value: 2,
                                        groupValue: 0,
                                        activeColor: Colors.green,
                                        onChanged: (val) {
                                          print("Radio $val");
                                        },
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    celana,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.only(left: 75),
                              child: Row(
                                children: [
                                  Text(
                                    'Jumlah',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xFF717171),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFADADAD),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                      child: Text(
                                        '-',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    '2',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF51D0D0),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                      child: Text(
                                        '+',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Total : 8.000',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 20),
                                  Container(
                                    height: 35,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF048F98),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Center(
                                      child: Text(
                                        'Terima',
                                        style: TextStyle(
                                            fontSize: 19,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
