import 'package:flutter/material.dart';
import 'package:grassroots_flutter/constants/const.dart';
import 'package:grassroots_flutter/constants/custom_color.dart';
import 'package:grassroots_flutter/screens/authentication/verification.dart';
import 'package:grassroots_flutter/screens/onboarding/onboard.dart';
import 'package:http/http.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 100),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => OnboardScreen()),
            ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  logo,
                  width: 180,
                ),
              ),

              const Text(splashHeading,
                  style: TextStyle(
                      color: splashHeadingColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w500)),
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
