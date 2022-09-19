import 'package:flutter/material.dart';

class Onboard1 extends StatelessWidget {
  const Onboard1({super.key});

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
          'Community Oriented',
          style: Theme.of(context).textTheme.headline1?.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 15.0),
        Text(
          'Sarafu network prosper economies built by thriving communities',
          style: Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
