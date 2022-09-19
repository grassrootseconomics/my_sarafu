import '../themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final Widget child;
  final Color? color;
  final Color? borderColor;
  final VoidCallback? onPressed;
  final double? buttonRadius;
  final double? height, width;
  const CustomTextButton({Key? key, required this.child, this.color, this.onPressed, this.buttonRadius, this.borderColor, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width ?? 300,
      child: TextButton(
        onPressed: onPressed ?? null,
        style: ButtonStyle(
          side: MaterialStateProperty.all(BorderSide(color: borderColor ?? color!)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(buttonRadius ?? 10))),
          backgroundColor: MaterialStateProperty.all(color ?? AppTheme.background),
        ),
        child: child,
      ),
    );
  }
}
