import 'package:flutter/material.dart';

Widget circleIconWithText(
    {required Widget icon,
    required String text,
    Color? textColor,
    double? fontSize,
    required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.blue[900],
          child: icon,
        ),
        Text(
          text,
          style: TextStyle(
              color: textColor ?? Colors.white, fontSize: fontSize ?? 14),
        )
      ],
    ),
  );
}

dynamic navigateReplace(BuildContext context, Widget route,
        {bool isDialog = false, bool isRootNavigator = true}) =>
    Navigator.of(context, rootNavigator: isRootNavigator).pushReplacement(
      MaterialPageRoute(
        fullscreenDialog: isDialog,
        builder: (context) => route,
      ),
    );

dynamic navigate(BuildContext context, Widget route,
        {bool isDialog = false, bool isRootNavigator = true}) =>
    Navigator.of(context, rootNavigator: isRootNavigator).push(
      MaterialPageRoute<void>(
        fullscreenDialog: isDialog,
        builder: (context) => route,
      ),
    );

heightSpace(BuildContext context, double height) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * height,
  );
}
