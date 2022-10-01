import 'package:flutter/material.dart';
import 'package:grassroots_flutter/constants/const.dart';
import 'package:grassroots_flutter/constants/custom_color.dart';
import 'package:grassroots_flutter/screens/authentication/verification.dart';
import 'package:http/http.dart';

class WalletSetUpScreen extends StatefulWidget {
  const WalletSetUpScreen({super.key});

  @override
  State<WalletSetUpScreen> createState() => _WalletSetUpScreenState();
}

class _WalletSetUpScreenState extends State<WalletSetUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  walletImage,
                  width: 200,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Tite Text
              const Text(walletHeading,
                  style: TextStyle(
                      color: onboardHeadingColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 10,
              ),
              //discription
              const Text(walletDesc,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: onboardTextColor,
                    fontSize: 14,
                  )),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VerifyIdentity(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  side:
                      const BorderSide(width: 1.3, color: onboardHeadingColor),
                  // backgroundColor: onboardHeadingColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),

                  minimumSize:
                      Size(MediaQuery.of(context).size.width * 0.8, 48),
                ),
                child: const Text(
                  "I have an existing wallet",
                  style: TextStyle(fontSize: 14, color: onboardHeadingColor),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VerifyIdentity(),
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
                  "Create an Account",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
