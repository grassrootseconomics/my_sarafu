import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/buttons.dart';
import '../../constants/const.dart';
import '../../constants/custom_color.dart';
import '../../utils/screen_resolution.dart';

class TransactionReceipt extends StatelessWidget {
  const TransactionReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0XFFF9F6F2),
        appBar: AppBar(
          backgroundColor: onboardHeadingColor,
          leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
          title: const Text(
            'Transaction Receipt',
            style: TextStyle(color: Colors.white),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.share, color: Colors.white),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30.h),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40.h,
                    width: 40.h,
                    decoration: BoxDecoration(
                      color: const Color(0XFFFAE6E1),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(Icons.upgrade_rounded, color: Colors.red, size: 25.sp),
                  ),
                  yMargin10,
                  Text(
                    '- 500 SRF',
                    style: TextStyle(
                      fontSize: 30.sp,
                      color: const Color(0XFF213656),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              yMargin20,
              Container(
                height: 400.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      TransactionDetails(title: 'Recipent', desc: '0X043fo67v2ca...76dk89bc56c'),
                      TransactionDetails(title: 'Transaction #', desc: '0X043fo67v2ca...76dk89bc56c'),
                      TransactionDetails(title: 'Network Fee', desc: '0.0204003 SRF'),
                      TransactionDetails(title: 'Confirmations', desc: '1'),
                      TransactionDetails(title: 'Transaction time', desc: '20 October 2022 11:28:32 AM'),
                    ],
                  ),
                ),
              ),
              yMargin15,
              Text(
                'MORE DETAILS',
                style: TextStyle(
                  fontSize: 15.sp,
                  color: onboardHeadingColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionDetails extends StatelessWidget {
  final String title, desc;
  const TransactionDetails({Key? key, required this.title, required this.desc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15.sp,
              color: const Color(0XFF213656),
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            desc,
            style: TextStyle(
              fontSize: 15.sp,
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              letterSpacing: 1,
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
