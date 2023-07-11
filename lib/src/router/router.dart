import 'package:get/get.dart';
import 'package:laundry/src/pages/Diproses/index.dart';
import 'package:laundry/src/pages/Diterima/index.dart';
import 'package:laundry/src/pages/Keranjang/index.dart';
import 'package:laundry/src/pages/Mitra/Dashboard/index.dart';
import 'package:laundry/src/pages/Home/index.dart';
import 'package:laundry/src/pages/Profil/index.dart';
import 'package:laundry/src/pages/Register/index.dart';
import 'package:laundry/src/pages/Selesai/index.dart';
import 'package:laundry/src/pages/User/Detail/index.dart';
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
  GetPage(name: profilRoute, page: () => Profil()),
  GetPage(name: diterimaRoute, page: () => Diterima()),
  GetPage(name: diprosesRoute, page: () => Diproses()),
  GetPage(name: selesaiRoute, page: () => Selesai()),
  GetPage(name: detailRoute, page: () => Detail()),
];
