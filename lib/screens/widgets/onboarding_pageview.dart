import 'package:flutter/material.dart';

import '../../constants/custom_color.dart';
import '../authentication/wallet_set_screen.dart';

class PageBuilderWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imgurl;
  const PageBuilderWidget({Key? key, required this.title, required this.description, required this.imgurl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 6),
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WalletSetUpScreen(),
                  ),
                );
              },
              child: const Text('Skip'),
            ),
          ),
          // Spacer(),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Image.asset(
              imgurl,
              width: 250,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //Tite Text
          Text(title, style: const TextStyle(color: onboardHeadingColor, fontSize: 20, fontWeight: FontWeight.w500)),
          const SizedBox(
            height: 10,
          ),
          //discription
          Text(description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: onboardTextColor,
                fontSize: 14,
              )),
        ],
      ),
    );
  }
}
