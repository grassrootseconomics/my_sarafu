import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum ButtonState { idle, loading, disabled }

class SarafuButton extends StatefulWidget {
  final String title;
  final IconData? leadingIcon, endIcon;
  final Function()? onTap;
  final Color? textColor, color;
  final double? width, height, buttonRadius;
  final double? textSize;
  final FontWeight? textWeight;
  final FontStyle? fontStyle;
  final Color? borderColor;

  const SarafuButton({
    Key? key,
    required this.title,
    this.leadingIcon,
    required this.onTap,
    this.textColor,
    this.width,
    this.textSize,
    this.height,
    this.color,
    this.endIcon,
    this.textWeight,
    this.fontStyle,
    this.buttonRadius,
    this.borderColor,
  }) : super(key: key);

  @override
  State<SarafuButton> createState() => _SarafuButtonState();
}

class _SarafuButtonState extends State<SarafuButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: widget.height ?? 45.h,
        width: widget.width ?? 130.w,
        decoration: BoxDecoration(
          color: widget.color ?? const Color(0xFF032E9A),
          borderRadius: BorderRadius.circular(widget.buttonRadius ?? 20),
          border: Border.all(color: widget.borderColor ?? const Color(0xFF032E9A), width: 1.3),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.leadingIcon != null)
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(
                  widget.leadingIcon,
                  color: Colors.white,
                  size: 16.sp,
                ),
              ),
            Text(
              widget.title,
              style: TextStyle(
                fontSize: widget.textSize ?? 15.sp,
                color: widget.textColor,
                fontWeight: widget.textWeight,
                fontStyle: widget.fontStyle,
              ),
            ),
            if (widget.endIcon != null)
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Icon(widget.endIcon, color: Colors.white, size: 16.sp),
              ),
          ],
        ),
      ),
    );
  }
}
