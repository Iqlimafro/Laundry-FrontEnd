import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:laundry/src/pages/Mitra/Dashboard/index.dart';

import '../config/size_config.dart';
import '../router/constant.dart';

class MainPageMitra extends StatefulWidget {
  const MainPageMitra({Key? key}) : super(key: key);

  @override
  _MainPageMitraState createState() => _MainPageMitraState();
}

class _MainPageMitraState extends State<MainPageMitra> {
  int _selectedIndex = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  DateTime? currentBackPressTime;

  final List<Widget> _pages = <Widget>[
    MitraDashboard(
      key: const PageStorageKey<String>('pa-home'),
    ),
    Container(
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
