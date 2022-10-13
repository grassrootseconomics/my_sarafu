import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import '../../constants/const.dart';
import '../../constants/custom_color.dart';
import '../../utils/buttons.dart';
import '../../utils/screen_resolution.dart';

class PinSetUp extends StatefulWidget {
  const PinSetUp({super.key});

  @override
  State<PinSetUp> createState() => _PinSetUpState();
}

class _PinSetUpState extends State<PinSetUp> {
  final TextEditingController pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
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
                const Spacer(flex: 1),
                // Icon(Icons.lock, size: 60.sp, color: customcolor1),
                Center(
                  child: Image.asset(
                    newLogo,
                    height: 65.h,
                    fit: BoxFit.cover,
                  ),
                ),
                yMargin10,
                yMargin25,
                Text(
                  'Set your Pin',
                  style: TextStyle(fontSize: 17.sp, color: customcolor3),
                ),
                const Spacer(flex: 2),
                PinCodeTextField(
                  autofocus: true,
                  controller: pinController,
                  pinBoxRadius: 10,
                  hasTextBorderColor: customcolor1,
                  highlightPinBoxColor: Colors.white,
                  defaultBorderColor: (Colors.grey[500])!,
                  maxLength: 6,
                  onTextChanged: (text) {},
                  onDone: (text) {
                    debugPrint("PIN CONTROLLER ${pinController.text}");
                  },
                  pinBoxHeight: 50.h,
                  pinBoxWidth: 40.w,
                  pinBoxDecoration: ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                  // pinBoxOuterPadding: const EdgeInsets.symmetric(horizontal: 6),
                  pinTextStyle: TextStyle(fontSize: 22.sp, color: customcolor1),
                  pinTextAnimatedSwitcherTransition: ProvidedPinBoxTextAnimation.scalingTransition,
                  pinTextAnimatedSwitcherDuration: const Duration(milliseconds: 100),
                  keyboardType: TextInputType.number,
                ),
                const Spacer(flex: 3),
                CustomTextButton(
                  width: 100.w,
                  height: 50.h,
                  buttonRadius: 50,
                  child: Text('Set Pin', style: TextStyle(color: customcolor4, fontSize: 15.sp)),
                ),
                const Spacer(flex: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
