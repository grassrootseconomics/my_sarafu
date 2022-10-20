import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final Color? borderColor;

  const CustomTextField({Key? key, required this.label, this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      child: TextField(
        maxLines: 1,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 14.8.h, horizontal: 15.w),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: borderColor ?? const Color(0XFFE2E1EC)),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: borderColor ?? const Color(0XFFE2E1EC)),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: borderColor ?? const Color(0XFFE2E1EC)),
            borderRadius: BorderRadius.circular(12),
          ),
          labelText: label,
          labelStyle: GoogleFonts.roboto(fontSize: 15.sp, color: const Color(0XFF213656)),
          errorMaxLines: 1,
        ),
        style: GoogleFonts.roboto(
          fontSize: 17.sp,
          color: Theme.of(context).textTheme.bodyText1!.color,
        ),
      ),
    );
  }
}
