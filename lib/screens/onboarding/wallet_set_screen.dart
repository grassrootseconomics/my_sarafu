import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grassroots_flutter/constants/const.dart';
import 'package:grassroots_flutter/constants/custom_color.dart';
import 'package:grassroots_flutter/screens/authentication/verification.dart';
import 'package:grassroots_flutter/screens/homeScreen/home_screen.dart';

import '../../base_widgets/buttons.dart';
import '../../base_widgets/widget.dart';

class WalletSetUpScreen extends StatefulWidget {
  const WalletSetUpScreen({super.key});

  @override
  State<WalletSetUpScreen> createState() => _WalletSetUpScreenState();
}

class _WalletSetUpScreenState extends State<WalletSetUpScreen> {
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
              heightSpace(context, 0.030),

              //Tite Text
              Text(
                walletHeading,
                style: TextStyle(
                  color: onboardHeadingColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              heightSpace(context, 0.010),
              //discription
              Text(walletDesc,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: onboardTextColor,
                    fontSize: 15.sp,
                  )),
              heightSpace(context, 0.030),

              SarafuButton(
                title: "Create a new Wallet",
                textColor: Colors.white,
                color: onboardHeadingColor,
                width: MediaQuery.of(context).size.width * 0.8,
                buttonRadius: 30,
                onTap: () => navigate(context, const VerifyIdentity()),
              ),
              heightSpace(context, 0.020),

              SarafuButton(
                title: "Import existing Wallet",
                textColor: onboardHeadingColor,
                color: customcolor4, // onboardHeadingColor.withOpacity(0.01),
                width: MediaQuery.of(context).size.width * 0.8,
                buttonRadius: 30,
                onTap: () => navigate(context, HomeScreen()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
