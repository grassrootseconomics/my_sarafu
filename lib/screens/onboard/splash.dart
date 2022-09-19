import 'package:flutter/material.dart';
import '../../themes/app_theme.dart';

class SarafuSplash extends StatelessWidget {
  const SarafuSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 0,
              child: Container(
                height: 300,
                width: 280,
                decoration: BoxDecoration(color: Colors.grey[350], borderRadius: BorderRadius.circular(20)),
              ),
            ),
            // Spacer(),
            SizedBox(height: 20),
            Expanded(
              flex: 0,
              child: Text(
                'Sarafu Network',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: AppTheme.black,
                ),
              ),
            ),
            // Spacer(),
          ],
        ),
      ),
    );
  }
}
