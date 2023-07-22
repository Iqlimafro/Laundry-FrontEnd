import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:laundry/src/pages/Diterima/index.dart';
import 'package:laundry/src/pages/Profil/index.dart';
import 'package:laundry/src/pages/User/Dashboard/index.dart';
import 'package:laundry/src/router/constant.dart';
import 'package:laundry/src/router/router.dart';

import '../config/size_config.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  DateTime? currentBackPressTime;

  final List<Widget> _pages = <Widget>[
    UserDashboard(
      key: const PageStorageKey<String>('pa-home'),
    ),
    Diterima(
      key: const PageStorageKey<String>('pa-search'),
    ),
    Profil(
      key: const PageStorageKey<String>('pa-favorite'),
    ),
    
  ];
  Widget _bottomNavigationBar(int selectedIndex) => Align(
        alignment: FractionalOffset.bottomCenter,
        child: ClipRect(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.white,
              backgroundColor: blueSecond,
              unselectedIconTheme: IconThemeData(color: Colors.white54),
              onTap: (int index) => setState(() => _selectedIndex = index),
              currentIndex: selectedIndex,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_sharp,
                    size: 30,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  label: 'History',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person, size: 30),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      );

  Future<bool> _onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
      currentBackPressTime = now;

      Fluttertoast.showToast(
          msg: "Tekan Sekali Lagi Untuk Keluar",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey.withOpacity(0.5),
          // textColor: Colors./,
          fontSize: 16.0);
      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          // bottomNavigationBar: Container(
          //     height: SizeConfig.blockSizeVertical! * 8,
          //     child: _bottomNavigationBar(_selectedIndex)),
          body: Stack(
            children: [
              PageStorage(
                child: _pages[_selectedIndex],
                bucket: bucket,
              ),
              Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                  child: _bottomNavigationBar(_selectedIndex)),
              Container(
                height: 20,
              )
            ],
          ),
        ));
  }
}
