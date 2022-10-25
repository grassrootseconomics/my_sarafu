// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grassroots_flutter/constants/const.dart';
import 'package:grassroots_flutter/constants/custom_color.dart';
import 'package:grassroots_flutter/screens/onboarding/import_wallet_screen.dart';
import 'package:grassroots_flutter/screens/authentication/verification.dart';

class walletimportingscreen extends StatefulWidget {
  const walletimportingscreen({super.key});

  @override
  State<walletimportingscreen> createState() => _walletimportingscreenState();
}

class _walletimportingscreenState extends State<walletimportingscreen> {
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
                  walletImage,
                  height: 250.h,
                  width: double.infinity,
                  fit: BoxFit.scaleDown,
                ),
              ),
              const SizedBox(height: 20),
              //Tite Text
              Text(
                walletHeading,
                style: TextStyle(
                  color: onboardHeadingColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              //discription
              Text(walletDesc,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: onboardTextColor,
                    fontSize: 15.sp,
                  )),
              const SizedBox(height: 60),
              Text(
                howtoimport,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: onboardTextColor,
                  fontSize: 15.sp,
                ),
              ),
              // ListView(
              //   children: <Widget> [],
              // ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VerifyIdentity(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: onboardHeadingColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  minimumSize:
                      Size(MediaQuery.of(context).size.width * 0.8, 48),
                ),
                child: const Text(
                  "Sign In with GE",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => importwallet(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  side:
                      const BorderSide(width: 1.3, color: onboardHeadingColor),
                  // backgroundColor: onboardHeadingColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),

                  minimumSize:
                      Size(MediaQuery.of(context).size.width * 0.8, 48),
                ),
                child: const Text(
                  "Import seed Phrase",
                  style: TextStyle(fontSize: 14, color: onboardHeadingColor),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
