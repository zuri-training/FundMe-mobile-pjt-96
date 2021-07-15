import 'package:flutter/material.dart';
import 'package:fund_me_zuri/Screens/Donorlogin/components/body.dart';

class Donorlogin extends StatelessWidget {
  const Donorlogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(),
    );
  }
}
