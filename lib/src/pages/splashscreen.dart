import 'package:flutter/material.dart';
import 'package:laundry/src/pages/Home/index.dart';
import 'package:laundry/src/pages/Register/index.dart';
import 'Login/index.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Register();
  }
}