import 'package:flutter/material.dart';
import '../../components/buttons.dart';
import '../../themes/app_theme.dart';
import 'onboard1.dart';
import 'onboard2.dart';
import 'onboard3.dart';
import '../wallet_setup.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  OnboardingState createState() => OnboardingState();
}

class OnboardingState extends State<Onboarding> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  void _skip() {
    _pageController.animateToPage(
      _numPages - 1,
      duration: Duration(milliseconds: 100),
      curve: Curves.ease,
    );
    setState(() {
      _currentPage = _numPages - 1;
    });
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: isActive ? AppTheme.grey : AppTheme.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: AppTheme.grey, width: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppTheme.white,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 550.0,
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: [
                    Onboard1(),
                    Onboard2(),
                    Onboard3(),
                  ],
                ),
              ),
              _currentPage != _numPages - 1
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildPageIndicator(),
                    )
                  : SizedBox(height: 1),
              Spacer(),
              _currentPage != _numPages - 1
                  ? Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () => _skip(),
                            child: Text(
                              'Skip',
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width / 7.5),
                          TextButton(
                            style: TextButton.styleFrom(
                              // primary: AppTheme.white,
                              backgroundColor: AppTheme.grey,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                              ),
                            ),
                            onPressed: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Next',
                                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                        color: AppTheme.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                SizedBox(width: 5.0),
                                Icon(
                                  Icons.arrow_forward,
                                  color: AppTheme.white,
                                  size: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  : Text(''),
            ],
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 225.0,
              width: double.infinity,
              color: Colors.white,
              child: GestureDetector(
                onTap: () => print('Get started'),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: CustomTextButton(
                      height: 48,
                      width: 300,
                      color: AppTheme.grey,
                      buttonRadius: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          'Get started',
                          style: Theme.of(context).textTheme.headline1?.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: AppTheme.white,
                              ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WalletSetUp()));
                      },
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
