import 'package:flutter/material.dart';
import 'package:fund_me_zuri/Screens/Onboarding2/onboarding2_screen.dart';
import 'package:fund_me_zuri/components/skip_button.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 50),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Image.asset('assets/images/onBoarding2.png'),
        ),
        SizedBox(height: 30),
        Text(
          'Make donation requests',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green,
            fontSize: 24,
          ),
        ),
        SizedBox(height: 30),
        Text(
          'Fundraise for a donation cause',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.green,
            fontSize: 18,
            letterSpacing: -1.5,
          ),
        ),
        SizedBox(height: 15),
        Text(
          ' cause ',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.green,
            fontSize: 18,
            letterSpacing: -1.5,
          ),

        ),
        SizedBox(height: 100),
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
