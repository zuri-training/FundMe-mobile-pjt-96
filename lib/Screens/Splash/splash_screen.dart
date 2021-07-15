import 'package:flutter/material.dart';
import 'package:fund_me_zuri/Screens/Splash//components/body.dart';
import 'package:fund_me_zuri/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);
  static String routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Body();
  }
}
