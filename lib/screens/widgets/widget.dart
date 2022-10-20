import 'package:flutter/material.dart';

Widget circleIconWithText({required Widget icon, required String text, required VoidCallback onTap}) {
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
          style: const TextStyle(color: Colors.white),
        )
      ],
    ),
  );
}
