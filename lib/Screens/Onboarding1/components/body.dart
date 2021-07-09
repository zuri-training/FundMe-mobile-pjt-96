import 'package:flutter/material.dart';
import 'package:fund_me_zuri/Screens/Onboarding2/onboarding2_screen.dart';
import 'package:fund_me_zuri/components/skip_button.dart';
import 'package:fund_me_zuri/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 100),
        Text(
          'Make a donation request',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
            fontSize: 24,
          ),
        ),
        SizedBox(height: 15),
        Text(
          'Fundraise for a donation cause',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: kPrimaryColor,
            fontSize: 18,
            letterSpacing: -1.5,
          ),
        ),
        SizedBox(height: 100),
        Container(
          child: Image.asset('assets/images/onboarding2.png'),
        ),
        SizedBox(height: 150),
        Container(
          child: Image.asset('assets/images/progressBar2.png'),
        ),
        SkipButton(
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Onboarding2Screen();
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
