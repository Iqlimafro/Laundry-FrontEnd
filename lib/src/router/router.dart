import 'package:get/get.dart';
import 'package:laundry/src/pages/splashscreen.dart';
import 'package:laundry/src/pages/User/Dashboard/index.dart';
import 'package:laundry/src/pages/Login/index.dart';
import 'package:laundry/src/router/constant.dart';

final List<GetPage<dynamic>>? routes = [
  GetPage(name: initialRoute, page: () => SplashScreen()),
  GetPage(name: loginRoute, page: () => LoginPage()),
  GetPage(name: userRoute, page: () => UserDashboard()),
];