import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

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
              const Spacer(flex: 1),
              Icon(Icons.lock, size: 80.sp, color: customcolor1),
              yMargin25,
              Text(
                'Set your Pin',
                style: TextStyle(fontSize: 20.sp, color: customcolor3),
              ),
              const Spacer(flex: 2),
              PinCodeTextField(
                autofocus: true,
                controller: pinController,
                hideCharacter: true,
                pinBoxRadius: 100,
                hasTextBorderColor: Colors.grey,
                highlightPinBoxColor: Colors.grey,
                defaultBorderColor: Colors.grey,
                maxLength: 6,
                // hasError: hasError,

                onTextChanged: (text) {
                  setState(() {
                    // hasError = false;
                  });
                },
                onDone: (text) {
                  debugPrint("DONE CONTROLLER ${pinController.text}");
                },
                pinBoxWidth: 30.h,
                pinBoxHeight: 30.w,

                wrapAlignment: WrapAlignment.spaceAround,
                pinBoxDecoration: ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                pinTextStyle: TextStyle(fontSize: 25.sp),
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
    );
  }
}
