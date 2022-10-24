// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grassroots_flutter/constants/custom_color.dart';

class CustomTextfield extends StatefulWidget {
  const CustomTextfield({super.key});

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10.w),
      child: Column(
        children: [
          Container(
            // color: Colors.teal,
            height: (155.6).h,
            child: TextField(
              maxLines: 10,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 14.8.h, horizontal: 7.w),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: customcolor1, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: customcolor1, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                //   labelText: 'Enter seed phrase',
                //   labelStyle: GoogleFonts.roboto(
                //       fontSize: 17.sp,
                //       color: customcolor1,
                //       fontWeight: FontWeight.w600),
                //   errorMaxLines: 1,
                // ),
                hintText: 'Enter seed phrase',
                hintStyle: GoogleFonts.roboto(
                  fontSize: 17.sp,
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
