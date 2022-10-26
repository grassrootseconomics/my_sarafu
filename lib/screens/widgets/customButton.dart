// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grassroots_flutter/constants/custom_color.dart';
// import 'package:stage3/constants/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.child,
    this.height,
    this.width,
    this.padding,
    this.border,
    this.margin,
    this.borderRadius,
    this.color,
    this.boxShadow,
    required this.onPressed,
  }) : super(key: key);

  final Widget child;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? color;

  final BoxBorder? border;
  final double? borderRadius;
  final Function() onPressed;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          height: height ?? 56,
          width: width ?? 100,
          margin: margin,
          padding: padding,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: border,
            color: color ?? onboardHeadingColor,
            boxShadow: boxShadow,
            borderRadius: BorderRadius.circular(borderRadius ?? 6.0),
          ),
          child: child),
    );
  }
}
