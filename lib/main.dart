import 'package:flutter/material.dart';
import 'package:fund_me_zuri/Screens/Onboarding/onboarding_screen.dart';
import 'package:fund_me_zuri/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fund Me',
      theme: ThemeData(
        primaryColor: kPrimaryLightColor,

      ),
      home: OnboardingScreen(),

    );
  }
}


