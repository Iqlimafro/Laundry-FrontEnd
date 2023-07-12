import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/src/config/size_config.dart';
import 'package:laundry/src/controller/londrycontroller.dart';
import 'package:laundry/src/controller/usercontroller.dart';
import 'package:laundry/src/router/constant.dart';
import 'package:laundry/src/services/assets.dart';
import 'package:laundry/src/pages/navbar.dart';

class UserDashboard extends StatefulWidget {
  const UserDashboard({super.key});

  @override
  State<UserDashboard> createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  LaundryController londry = Get.put(LaundryController());
  UserController username = Get.put(UserController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    londry.listLondry();
    username.getuser();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
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
                          // SizedBox(height: 15),
                          Row(
                            children: [
                              Image.asset(
                                user,
                                height: 70,
                              ),
                              Text(
                                username.user.value.username.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                          // SizedBox(height: 10),
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
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mitra',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      height: SizeConfig.safeBlockVertical! * 30,
                      child: Obx(() {
                        if (londry.isLoading.value) {
                          return const CircularProgressIndicator();
                        } else {
                          return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: londry.user.value.data!.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () => Get.toNamed(detailRoute),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(bottom: 70),
                                          height: 180,
                                          width: 140,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white,
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Colors.black38,
                                                  blurRadius: 2,
                                                  offset: const Offset(0, 1))
                                            ],
                                          ),
                                          child: Image.network(
                                            londry
                                                .user.value.data![index].image!,
                                            height: 200,
                                            width: 150,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        }
                      }),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
