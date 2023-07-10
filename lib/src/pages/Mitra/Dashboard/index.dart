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
                          padding:
                              EdgeInsets.only(left: 15, right: 15, top: 10),
                          child: Column(
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
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                                    BorderRadius.circular(25)),
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
                                      SizedBox(height: 15),
                                      
                                    ],
                                  ),
                                ],
                              )
                              // Container(
                              //   margin: EdgeInsets.only(right: 15),
                              //   child: Image.asset(user),
                              // ),
                              // Padding(
                              //   padding: EdgeInsets.symmetric(vertical: 10),
                              //   child: Column(
                              //     crossAxisAlignment: CrossAxisAlignment.start,
                              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //     children: [
                              //       Text(
                              //         'Nama Customer',
                              //         style: TextStyle(
                              //           fontSize: 25,
                              //           color: Colors.black
                              //         ),
                              //       )
                              //     ],
                              //   ),
                              // )
                            ],
                          ),
                        ))
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
