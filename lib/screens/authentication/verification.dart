// ignore_for_file: sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grassroots_flutter/screens/authentication/otp_screen.dart';
import 'package:grassroots_flutter/utils/screen_resolution.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../../constants/const.dart';
import '../../utils/buttons.dart';
import '../../constants/custom_color.dart';

class VerifyIdentity extends StatefulWidget {
  const VerifyIdentity({super.key});

  @override
  State<VerifyIdentity> createState() => _VerifyIdentityState();
}

class _VerifyIdentityState extends State<VerifyIdentity> {
  TabController? billsTabController;
  TextEditingController phonenumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0XFFF9F6F2),
        body: DefaultTabController(
          length: 2,
          animationDuration: const Duration(milliseconds: 0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 60.h, bottom: 25.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: SizedBox(
                      height: 150.h,
                      width: 150.h,
                      child: Image.asset(newLogo, fit: BoxFit.contain),
                    ),
                  ),
                  yMargin20,
                  Text(
                    'Verify your Identity',
                    style: TextStyle(
                      fontSize: 24.sp,
                      color: customcolor1,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  yMargin10,
                  Text(
                    'Verify with your phone number or email\naddress.',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: customcolor3,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  yMargin20,
                  VerifyTab(billsTabController: billsTabController),
                  yMargin20,
                  SizedBox(
                    height: 80.h,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: TabBarView(
                        controller: billsTabController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const EmailVerify(),
                          PhoneVerify(phonenumberController: phonenumberController),
                        ],
                      ),
                    ),
                  ),
                  yMargin30,
                  Align(
                    alignment: Alignment.bottomRight,
                    child: CustomTextButton(
                      onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OTPVerify(),
                        ),
                      ),
                      width: 120.w,
                      height: 40.h,
                      buttonRadius: 50,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Send OTP',
                            style: TextStyle(color: customcolor4, fontSize: 15.sp),
                          ),
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
        ),
      ),
    );
  }
}

class PhoneVerify extends StatelessWidget {
  const PhoneVerify({Key? key, required this.phonenumberController}) : super(key: key);

  final TextEditingController phonenumberController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: (56.6).h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: customcolor1, width: 2),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  // print(number.phoneNumber);
                },
                onInputValidated: (bool value) {
                  // print(value);
                },
                selectorConfig: const SelectorConfig(
                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  trailingSpace: false,
                  leadingPadding: 10,
                ),
                ignoreBlank: true,
                autoValidateMode: AutovalidateMode.disabled,
                selectorTextStyle: TextStyle(color: Colors.black, fontSize: 18.sp),
                spaceBetweenSelectorAndTextField: 0,
                textFieldController: phonenumberController,
                textStyle: TextStyle(color: Colors.black, fontSize: 20.sp),
                textAlign: TextAlign.left,
                formatInput: false,
                keyboardType: const TextInputType.numberWithOptions(
                  signed: true,
                  decimal: true,
                ),
                inputBorder: InputBorder.none,
                onSaved: (PhoneNumber number) {
                  // print('On Saved: $number');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EmailVerify extends StatelessWidget {
  const EmailVerify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10.w),
      child: Container(
        // color: Colors.teal,
        height: (55.6).h,
        child: TextField(
          maxLines: 1,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 14.8.h, horizontal: 15.w),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: customcolor1, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: customcolor1, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            labelText: 'Email Address',
            labelStyle: GoogleFonts.roboto(fontSize: 17.sp, color: customcolor1, fontWeight: FontWeight.w600),
            errorMaxLines: 1,
          ),
          style: GoogleFonts.roboto(
            fontSize: 17.sp,
            color: Theme.of(context).textTheme.bodyText1!.color,
          ),
        ),
      ),
    );
  }
}

class VerifyTab extends StatelessWidget {
  const VerifyTab({Key? key, required this.billsTabController}) : super(key: key);

  final TabController? billsTabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: TabBar(
        controller: billsTabController,
        isScrollable: true,
        unselectedLabelColor: customcolor3,
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(borderRadius: BorderRadius.circular(5), color: const Color.fromARGB(255, 213, 221, 239)),
        labelStyle: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.bold),
        labelColor: customcolor1,
        unselectedLabelStyle: GoogleFonts.roboto(fontWeight: FontWeight.w400),
        indicatorWeight: 2,
        tabs: const [
          Tab(
            text: '    Email    ',
          ),
          Tab(text: '    Phone Number    '),
        ],
      ),
    );
  }
}
