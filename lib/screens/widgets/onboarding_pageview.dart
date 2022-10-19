import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/custom_color.dart';
import '../authentication/wallet_set_screen.dart';

class PageBuilderWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imgurl;
  const PageBuilderWidget({Key? key, required this.title, required this.description, required this.imgurl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 6),
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WalletSetUpScreen(),
                  ),
                );
              },
              child: const Text('Skip' , 
              // style: TextStyle(color: onboardHeadingColor )
            ),
            ),
          ),
          // Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                SizedBox(
                  child: Image.asset(
                    imgurl,
                    height: 280.h,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                //Tite Text
                Text(
                  title,
                  style: TextStyle(
                    color: onboardHeadingColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                //discription
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: onboardTextColor,
                    fontSize: 15.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
