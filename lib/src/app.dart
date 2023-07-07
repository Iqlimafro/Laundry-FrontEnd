import 'package:flutter/material.dart';
import 'package:laundry/src/router/constant.dart';
import 'package:get/get.dart';
import 'package:laundry/src/router/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Laundry',
      theme: ThemeData(appBarTheme: AppBarTheme(
          color: const Color(0xffD4A373),
          ),
      ),
      initialRoute: initialRoute,
      getPages: routes
    );
  }
}
