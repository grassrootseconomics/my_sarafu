import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grassroots_flutter/constants/const.dart';
import 'package:grassroots_flutter/constants/custom_color.dart';
import 'package:grassroots_flutter/screens/onboarding/onboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const OnboardScreen()),
            ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF9F6F2),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  logo,
                  width: 90.h,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                splashHeading,
                style: TextStyle(
                  color: splashHeadingColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //discription

              const CircularProgressIndicator()
            ],
          ),
        ),
      ),
    );
  }
}
