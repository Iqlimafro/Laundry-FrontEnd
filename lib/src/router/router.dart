import 'package:get/get.dart';
import 'package:laundry/src/pages/Home/index.dart';
import 'package:laundry/src/pages/Register/index.dart';
import 'package:laundry/src/pages/splashscreen.dart';
import 'package:laundry/src/pages/User/Dashboard/index.dart';
import 'package:laundry/src/pages/Login/index.dart';
import 'package:laundry/src/router/constant.dart';

final List<GetPage<dynamic>>? routes = [
  GetPage(name: initialRoute, page: () => SplashScreen()),
  GetPage(name: homePage, page: () => HomePage()),
  GetPage(name: loginRoute, page: () => LoginPage()),
  GetPage(name: registerRoute, page: () => Register()),
  GetPage(name: userRoute, page: () => UserDashboard()),
];