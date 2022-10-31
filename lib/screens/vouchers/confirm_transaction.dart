import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../base_widgets/buttons.dart';
import '../../constants/const.dart';
import '../../constants/custom_color.dart';
import '../../utils/screen_resolution.dart';
import 'transaction_receipt.dart';

class ConfirmTransaction extends StatelessWidget {
  const ConfirmTransaction({super.key});

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
            'Confirm Transaction',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30.h),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sending',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: const Color(0XFF213656),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  yMargin10,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.keyboard_double_arrow_right_outlined, size: 25.sp),
                      Text(
                        '500 SRF',
                        style: TextStyle(
                          fontSize: 30.sp,
                          color: const Color(0XFF213656),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              yMargin20,
              Container(
                height: 250.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'From',
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: const Color(0XFF213656),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '0X043fo67v2ca...76dk89bc56c',
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                        ),
                      ),
                      const Divider(),
                      yMargin15,
                      Text(
                        'To',
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: const Color(0XFF213656),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '0X043fo67v2ca...76dk89bc56c',
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                        ),
                      ),
                      const Divider(),
                      const Spacer(),
                      Container(
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0XFFCDD5EB),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Amount',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: const Color(0XFF213656),
                                ),
                              ),
                              Text(
                                '500.02023 SRF',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: onboardHeadingColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              yMargin80,
              Center(
                child: SarafuButton(
                  width: double.infinity,
                  title: 'Send',
                  textColor: Colors.white,
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                      ),
                      isScrollControlled: true,
                      builder: ((context) {
                        return const ConfirmModal();
                      }),
                      elevation: 8,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// todo: Design send voucher screen

class ConfirmModal extends StatelessWidget {
  const ConfirmModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 600.h,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            yMargin30,
            SizedBox(
              height: 70.h,
              width: 70.h,
              child: Image.asset(newLogo, fit: BoxFit.cover),
            ),
            yMargin20,
            Text(
              'Successfully sent!',
              style: TextStyle(
                fontSize: 15.sp,
                color: const Color(0XFF0BB79E),
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              '500 SRF',
              style: TextStyle(
                fontSize: 35.sp,
                color: const Color(0XFF213656),
                fontWeight: FontWeight.w700,
              ),
            ),
            yMargin15,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'To',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: const Color(0XFF213656),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '0X043fo67v2ca...76dk89bc56c',
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
            ),
            Text(
              'Save address',
              style: TextStyle(
                fontSize: 15.sp,
                color: onboardHeadingColor,
              ),
            ),
            yMargin30,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const ModalDetails(title: 'TX ID', desc: '6146...c9d0'),
                  const ModalDetails(title: 'Block', desc: '1,234,245'),
                  const ModalDetails(title: 'Confirmations', desc: '10/10'),
                  const ModalDetails(title: 'Timestamp', desc: '21.03.2022 at 23:00'),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Status',
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: customcolor3,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SarafuButton(
                        color: customcolor2,
                        height: 25.h,
                        title: 'CONFIRMED',
                        textColor: Colors.white,
                        buttonRadius: 10,
                        onTap: () {},
                      ),
                    ],
                  ),
                  yMargin30,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SarafuButton(
                        width: 170.w,
                        title: 'View on Explorer',
                        textColor: Colors.white,
                        onTap: () {},
                      ),
                      SarafuButton(
                        width: 90.w,
                        title: 'Share',
                        textColor: Colors.white,
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TransactionReceipt(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class ModalDetails extends StatelessWidget {
  final String title, desc;
  const ModalDetails({Key? key, required this.title, required this.desc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15.sp,
              color: customcolor3,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            desc,
            style: TextStyle(
              fontSize: 15.sp,
              color: const Color(0XFF5D5E67),
            ),
          ),
        ],
      ),
    );
  }
}
