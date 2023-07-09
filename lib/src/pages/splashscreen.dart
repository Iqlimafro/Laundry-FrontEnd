import 'package:flutter/material.dart';
import 'package:laundry/src/services/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  logo,
                  // height: 200,
                  // width: 200,
                ),
                
              ),
              SizedBox(height: 15),
              Text(
                'Wangi',
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF5DB0A8),
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}