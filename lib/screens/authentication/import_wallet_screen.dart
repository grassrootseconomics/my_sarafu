// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grassroots_flutter/base_widgets/custom_buttons.dart';
import 'package:grassroots_flutter/base_widgets/custom_input_box.dart';
import 'package:grassroots_flutter/constants/custom_color.dart';
import 'package:grassroots_flutter/screens/authentication/verify_pin.dart';

class importwallet extends StatelessWidget {
  const importwallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          "Import Wallet",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 60,
            width: double.infinity,
          ),
          CustomTextfield(),
          Text(
              "Typically 12 ( sometimes 24) words separated by\n single spaces."),
          SizedBox(
            height: 60,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Veirfypin(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: onboardHeadingColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 48),
            ),
            child: const Text(
              "Create a new Wallet",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ]),
      ),
    );
  }
}
