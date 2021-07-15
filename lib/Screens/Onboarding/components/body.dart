import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fund_me_zuri/Screens/Onboarding/components/background.dart';
import 'package:fund_me_zuri/Screens/Onboarding1/onboarding1_screen.dart';
import 'package:fund_me_zuri/components/skip_button.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //This is to access the entire screen H ans W
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 100),
            Text(
              'Find a child to sponsor',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Find and select a child to sponsor',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.green,
                fontSize: 18,
                letterSpacing: -1.5,
              ),
            ),
            SizedBox(height: 100),
            Container(
              child: Image.asset('assets/images/onboarding1.png'),
            ),
            SizedBox(height: 150),
            Container(
              child: Image.asset('assets/images/progressBar1.png'),
            ),
            SkipButton(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Onboarding1Screen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// SvgPicture.asset('assets/images/onBoarding1.svg',cacheColorFilter: false,),

// Expanded(
//   child: Align(
//     alignment: FractionalOffset.bottomCenter,
//     child: Padding(
//       padding: EdgeInsets.only(bottom: 20.0),
//       child: Text('Making a difference for the african child',
//         textDirection: TextDirection.ltr,
//         style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
//       ),//Your widget here,
//     ),
//   ),
// ),

// Stack(
// children: <Widget> [
// Positioned(
// child: Image.asset('assets/images/onBoarding1.png'),
// ),
// Row(
// children: [
// Text('Find a child to sponsor',
// textDirection: TextDirection.ltr,
// style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
// ),
// Text('Find a child to sponsor',
// textDirection: TextDirection.ltr,
// style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
// ),
// Text('Find a child to sponsor',
// textDirection: TextDirection.ltr,
// style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
// ),
// ],
// ),
// ],
//
// ),
