import 'package:flutter/material.dart';
import '../components/buttons.dart';
import '../themes/app_theme.dart';

class WalletSetUp extends StatelessWidget {
  const WalletSetUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: AppTheme.white,
        child: Column(
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
              'Set up your wallet',
              style: Theme.of(context).textTheme.headline1?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(height: 15.0),
            Text(
              'Import an existing wallet or create a new one',
              style: Theme.of(context).textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0),
            CustomTextButton(
              height: 48,
              width: 300,
              color: AppTheme.white,
              borderColor: AppTheme.grey,
              buttonRadius: 50,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Text(
                  'I have an existing network',
                  style: Theme.of(context).textTheme.headline1?.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: AppTheme.grey,
                      ),
                ),
              ),
              onPressed: () {},
            ),
            SizedBox(height: 15.0),
            CustomTextButton(
              height: 48,
              width: 300,
              color: AppTheme.grey,
              buttonRadius: 50,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Text(
                  'Create an account',
                  style: Theme.of(context).textTheme.headline1?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: AppTheme.white,
                      ),
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
