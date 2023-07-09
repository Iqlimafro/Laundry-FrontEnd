import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:laundry/src/pages/Home/index.dart';
=======
>>>>>>> 6b0a1579532fc87613b49435aeef42e5a1a3bf24
import 'package:laundry/src/pages/Register/index.dart';
import 'package:laundry/src/pages/splashscreen.dart';
import 'package:laundry/src/pages/User/Dashboard/index.dart';
import 'package:laundry/src/pages/Login/index.dart';
import 'package:laundry/src/router/constant.dart';

final List<GetPage<dynamic>>? routes = [
  GetPage(name: initialRoute, page: () => SplashScreen()),
<<<<<<< HEAD
  GetPage(name: homePage, page: () => HomePage()),
=======
  GetPage(name: registerRoute, page: () => Register()),
>>>>>>> 6b0a1579532fc87613b49435aeef42e5a1a3bf24
  GetPage(name: loginRoute, page: () => LoginPage()),
  GetPage(name: registerRoute, page: () => Register()),
  GetPage(name: userRoute, page: () => UserDashboard()),
];
