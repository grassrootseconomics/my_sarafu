import 'package:flutter/material.dart';

class Onboard3 extends StatelessWidget {
  const Onboard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            height: 327,
            width: 290,
            decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        SizedBox(height: 30.0),
        Text(
          'Multi-Voucher Support',
          style: Theme.of(context).textTheme.headline1?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        SizedBox(height: 15.0),
        Text(
          'Start by creating your own voucher and share it with your community.',
          style: Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
