import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grassroots_flutter/constants/custom_color.dart';
import 'package:grassroots_flutter/utils/screen_resolution.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import '../../constants/const.dart';

class OTPVerify extends StatefulWidget {
  const OTPVerify({super.key});
  @override
  State<OTPVerify> createState() => _OTPVerifyState();
}

class _OTPVerifyState extends State<OTPVerify> {
  final TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0XFFF9F6F2),
          elevation: 0,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color(0XFFF9F6F2),
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 50.h, top: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Image.asset(
                    newLogo,
                    height: 65.h,
                    fit: BoxFit.cover,
                  ),
                ),
                yMargin5,
                Text(
                  'Enter code',
                  style: TextStyle(
                    fontSize: 22.sp,
                    color: customcolor1,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                yMargin10,
                Text(
                  'We\'ve sent an SMS with an activation code\nto your phone',
                  style: TextStyle(fontSize: 13.sp, color: customcolor3, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                yMargin5,
                Text(
                  '+254605794667',
                  style: TextStyle(fontSize: 17.sp, color: Colors.black, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                yMargin25,
                PinCodeTextField(
                  autofocus: true,
                  controller: otpController,
                  pinBoxRadius: 10,
                  hasTextBorderColor: customcolor1,
                  highlightPinBoxColor: Colors.white,
                  defaultBorderColor: (Colors.grey[500])!,
                  maxLength: 4,
                  // hasError: hasError,

                  onTextChanged: (text) {
                    setState(() {
                      // hasError = false;
                    });
                  },
                  onDone: (text) {
                    debugPrint("DONE CONTROLLER ${otpController.text}");
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const PinSetUp()),
                    // );
                  },
                  pinBoxHeight: 50.h,
                  pinBoxWidth: 42.w,
                  pinBoxDecoration: ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                  pinBoxOuterPadding: const EdgeInsets.symmetric(horizontal: 6),
                  pinTextStyle: TextStyle(fontSize: 22.sp, color: customcolor1),
                  pinTextAnimatedSwitcherTransition: ProvidedPinBoxTextAnimation.scalingTransition,
                  pinTextAnimatedSwitcherDuration: const Duration(milliseconds: 100),
                  keyboardType: TextInputType.number,
                ),
                const Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'I have not received the Pin',
                      style: TextStyle(fontSize: 13.sp, color: Colors.black),
                    ),
                    xMargin10,
                    Text(
                      'Resend OTP',
                      style: TextStyle(fontSize: 13.sp, color: customcolor1, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
