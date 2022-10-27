import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum ButtonState { idle, loading, disabled }

class SarafuButton extends StatefulWidget {
  final String title;
  final IconData? leadingIcon, endIcon;
  final Function()? onTap;
  final Color? textColor, color;
  final double? width, height, radius;
  final double? textSize;
  final FontWeight? textWeight;
  final FontStyle? fontStyle;

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
    this.radius,
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
        height: widget.height ?? 50.h,
        width: widget.width ?? 130.w,
        decoration: BoxDecoration(
          color: widget.color ?? const Color(0xFF032E9A),
          borderRadius: BorderRadius.circular(widget.radius ?? 50),
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
                fontSize: widget.textSize ?? 16.sp,
                color: widget.textColor,
                fontWeight: widget.textWeight,
                fontStyle: widget.fontStyle,
              ),
            ),
            if (widget.endIcon != null)
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Icon(
                  widget.endIcon,
                  color: Colors.white,
                  size: 16.sp,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
