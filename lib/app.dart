import 'package:flutter/material.dart';
import 'screens/onboard/base.dart';
import 'screens/onboard/splash.dart';
import 'themes/app_theme.dart';

class SarafuApp extends StatelessWidget {
  const SarafuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const Onboarding(),
    );
  }
}
