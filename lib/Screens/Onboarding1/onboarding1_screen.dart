import 'package:flutter/material.dart';
import 'package:fund_me_zuri/Screens/Onboarding1/components/body.dart';

class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Body(),
    );
  }
}

