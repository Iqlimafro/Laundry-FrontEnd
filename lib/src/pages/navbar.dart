import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:laundry/src/router/constant.dart';
import 'package:laundry/src/router/router.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> with SingleTickerProviderStateMixin {
  String title = 'BottomNavigationBar';
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
        child: Container(
          color: blueMain,
          child: TabBar(
            labelColor: Color(0xff5DB0A8),
            unselectedLabelColor: Colors.white,
            labelStyle: TextStyle(fontSize: 10.0),
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.black, width: 0.0),
              insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
            ),
            indicatorColor: Colors.black,
            tabs: <Widget>[
              InkWell(
                onTap: () => Get.offAndToNamed(userRoute),
                child: Tab(
                  icon: Icon(
                    Icons.home,
                    size: 24.0,
                  ),
                  text: "Home",
                ),
              ),
             InkWell(
                onTap: () => Get.offAndToNamed(diterimaRoute),
                child: Tab(
                  icon: Icon(
                    Icons.shopping_cart_checkout_sharp,
                    size: 24.0,
                  ),
                  text: "Order Saya",
                ),
              ),
              InkWell(
                onTap: () => Get.offAndToNamed(profilRoute),
                child: Tab(
                  icon: Icon(
                    Icons.account_circle_outlined,
                    size: 24.0,
                  ),
                  text: "Profile",
                ),
              ),
            ],
            controller: _tabController,
          ),
        ),
      ),
    );
  }
}
