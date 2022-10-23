import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grassroots_flutter/screens/vouchers/confirm_transaction.dart';
import '../../constants/buttons.dart';
import '../../constants/custom_color.dart';
import '../../constants/text_field.dart';
import '../../utils/screen_resolution.dart';

class SendVoucher extends StatelessWidget {
  const SendVoucher({super.key});

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
            'Send Voucher',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50.h),
          child: Column(
            children: [
              Container(
                height: 360.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      const SelectVoucher(),
                      yMargin40,
                      Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const CustomTextField(
                                label: 'Enter amount',
                              ),
                              yMargin5,
                              Row(
                                children: [
                                  Text(
                                    'Balance: ',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      color: const Color(0XFF213656),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    '650 SRF',
                                    style: TextStyle(fontSize: 15.sp, color: onboardHeadingColor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Positioned(
                            right: 10,
                            top: 16.h,
                            child: Text(
                              'Max',
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: const Color(0XFF757575),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      yMargin40,
                      Stack(
                        children: [
                          const CustomTextField(
                            label: 'Recipient address',
                          ),
                          Positioned(
                            right: 10,
                            top: 16.h,
                            child: Text(
                              'Paste',
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: const Color(0XFF757575),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              yMargin40,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SarafuButton(
                    title: 'Scan',
                    textColor: Colors.white,
                    onTap: () {},
                    leadingIcon: Icons.qr_code,
                  ),
                  SarafuButton(
                    title: 'Next',
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ConfirmTransaction(),
                        ),
                      );
                    },
                    endIcon: Icons.arrow_forward,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectVoucher extends StatefulWidget {
  const SelectVoucher({super.key});

  @override
  State<SelectVoucher> createState() => _SelectVoucherState();
}

class _SelectVoucherState extends State<SelectVoucher> {
  List<String> items = ['SRF', 'ETH', 'XRP', 'BTC', 'USDT'];
  String? selectedItem = 'SRF';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity, // 250.w,
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            labelText: 'Select Voucher',
            labelStyle: GoogleFonts.roboto(fontSize: 15.sp, color: const Color(0XFF213656)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(width: 2, color: Color(0XFFE2E1EC)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(width: 2, color: Color(0XFFE2E1EC)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(width: 2, color: Color(0XFFE2E1EC)),
            ),
          ),
          isDense: true,
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(item, style: TextStyle(fontSize: 15.sp)),
                  ))
              .toList(),
          onChanged: (item) => setState(() => selectedItem = item),
        ),
      ),
    );
  }
}
