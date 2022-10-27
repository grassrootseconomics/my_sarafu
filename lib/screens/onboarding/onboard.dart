import 'package:flutter/material.dart';
import 'package:grassroots_flutter/base_widgets/onboarding_pageview.dart';
import 'package:grassroots_flutter/constants/const.dart';
import 'package:grassroots_flutter/screens/onboarding/wallet_set_screen.dart';

import '../../constants/custom_color.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});
  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF9F6F2),
      body: SafeArea(
        child: Stack(
          // alignment: Alignment.center,
          children: [
            PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemCount: allinonboardlist.length,
                itemBuilder: (context, index) {
                  return PageBuilderWidget(
                    title: allinonboardlist[index].titlestr,
                    description: allinonboardlist[index].description,
                    imgurl: allinonboardlist[index].imgStr,
                  );
                }),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.18,
              left: MediaQuery.of(context).size.width * 0.44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  allinonboardlist.length,
                  (index) => buildDot(index: index),
                ),
              ),
            ),
            currentIndex < allinonboardlist.length - 1
                ? Container()
                : Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.1,
                    left: MediaQuery.of(context).size.width * 0.1,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WalletSetUpScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: onboardHeadingColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        minimumSize:
                            Size(MediaQuery.of(context).size.width * 0.8, 48),
                      ),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentIndex == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentIndex == index ? primarygreen : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
