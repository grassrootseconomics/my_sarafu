import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grassroots_flutter/constants/custom_color.dart';
import 'package:grassroots_flutter/utils/screen_resolution.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

import '../../utils/buttons.dart';
import 'set_pin.dart';

class OTPVerify extends StatefulWidget {
  const OTPVerify({super.key});

  @override
  State<OTPVerify> createState() => _OTPVerifyState();
}

class _OTPVerifyState extends State<OTPVerify> {
  final TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: customcolor4,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300.h,
                width: double.infinity,
                child: Image.asset('assets/images/girl.png', fit: BoxFit.cover),
              ),
              yMargin25,
              Text(
                'Identity Verification',
                style: TextStyle(
                  fontSize: 24.sp,
                  color: customcolor1,
                  fontWeight: FontWeight.w700,
                ),
              ),
              yMargin15,
              Text(
                'The One Time Pin has been send to:',
                style: TextStyle(fontSize: 15.sp, color: customcolor3, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              yMargin10,
              Text(
                '+254605794667',
                style: TextStyle(fontSize: 22.sp, color: Colors.black, fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              ),
              yMargin25,
              PinCodeTextField(
                autofocus: true,
                controller: otpController,
                pinBoxRadius: 100,
                hasTextBorderColor: customcolor1,
                highlightPinBoxColor: Colors.white,
                defaultBorderColor: customcolor1,
                maxLength: 4,
                // hasError: hasError,

                onTextChanged: (text) {
                  setState(() {
                    // hasError = false;
                  });
                },
                onDone: (text) {
                  debugPrint("DONE CONTROLLER ${otpController.text}");
                },
                pinBoxWidth: 60.h,
                pinBoxHeight: 60.w,

                wrapAlignment: WrapAlignment.spaceAround,
                pinBoxDecoration: ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                pinTextStyle: TextStyle(fontSize: 25.sp),
                pinTextAnimatedSwitcherTransition: ProvidedPinBoxTextAnimation.scalingTransition,
                pinTextAnimatedSwitcherDuration: const Duration(milliseconds: 100),
                keyboardType: TextInputType.number,
              ),
              yMargin20,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'I have not recived the Pin',
                    style: TextStyle(fontSize: 13.sp, color: Colors.black),
                  ),
                  xMargin10,
                  Text(
                    'Resend OTP',
                    style: TextStyle(fontSize: 15.sp, color: customcolor1, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              yMargin50,
              Align(
                alignment: Alignment.bottomRight,
                child: CustomTextButton(
                  onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PinSetUp(),
                    ),
                  ),
                  width: 80.w,
                  height: 40.h,
                  buttonRadius: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Next', style: TextStyle(color: customcolor4, fontSize: 15.sp)),
                      const SizedBox(width: 2),
                      Icon(Icons.arrow_forward_ios_rounded, color: customcolor4, size: 15.sp),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class OTPField extends StatefulWidget {
//   final Function? onChanged;
//   final Function? onComplete;
//   final TextEditingController? textEditingController;

//   const OTPField({Key? key, this.onChanged, this.onComplete, this.textEditingController}) : super(key: key);

//   @override
//   _OTPFieldState createState() => _OTPFieldState();
// }

// class _OTPFieldState extends State<OTPField> {
//   String? currentText;

//   TextEditingController _textEditingController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       constraints: const BoxConstraints(maxWidth: 270),
//       child: PinCodeTextField(
//         appContext: context,
//         length: 6,
//         keyboardType: TextInputType.number,
//         obscureText: false,
//         cursorColor: Theme.of(context).cursorColor,
//         animationType: AnimationType.fade,
//         textStyle: Theme.of(context).textTheme.headline2,
//         pinTheme: PinTheme(
//           shape: PinCodeFieldShape.underline,
//           borderRadius: BorderRadius.circular(10),
//           fieldHeight: 50,
//           fieldWidth: 34,
//           activeFillColor: Colors.white,
//           inactiveColor: Theme.of(context).primaryColor,
//           selectedColor: Theme.of(context).primaryColor,
//           activeColor: Theme.of(context).primaryColor,
//         ),
//         animationDuration: const Duration(milliseconds: 300),
//         backgroundColor: Colors.transparent,
//         controller: widget.textEditingController ?? _textEditingController,
//         enableActiveFill: false,
//         onCompleted: widget.onComplete as void Function(String)?,
//         onChanged: widget.onChanged as void Function(String),
//         beforeTextPaste: (text) {
//           //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
//           //but you can show anything you want here, like your pop up saying wrong paste format or etc
//           return true;
//         },
//       ),
//     );
//   }
// }
