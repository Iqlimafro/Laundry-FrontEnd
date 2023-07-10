import 'package:get/get.dart';
import 'package:laundry/src/pages/Keranjang/index.dart';
// <<<<<<< HEAD
import 'package:laundry/src/pages/Mitra/Dashboard/index.dart';
// =======
// <<<<<<< HEAD
import 'package:laundry/src/pages/Home/index.dart';
// =======
// >>>>>>> 6b0a1579532fc87613b49435aeef42e5a1a3bf24
// >>>>>>> 40c3c4445a5ef7deb73e0be72feb43b5ae294b1b
import 'package:laundry/src/pages/Register/index.dart';
import 'package:laundry/src/pages/splashscreen.dart';
import 'package:laundry/src/pages/User/Dashboard/index.dart';
import 'package:laundry/src/pages/Login/index.dart';
import 'package:laundry/src/router/constant.dart';

final List<GetPage<dynamic>>? routes = [
  GetPage(name: initialRoute, page: () => SplashScreen()),
  GetPage(name: homePage, page: () => HomePage()),
  GetPage(name: registerRoute, page: () => Register()),
  GetPage(name: loginRoute, page: () => LoginPage()),
  GetPage(name: registerRoute, page: () => Register()),
  GetPage(name: userRoute, page: () => UserDashboard()),
  GetPage(name: mitraRoute, page: () => MitraDashboard()),
   GetPage(name: keranjangRoute, page: () => Keranjang()),
];
