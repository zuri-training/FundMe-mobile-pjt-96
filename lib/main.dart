import 'package:flutter/material.dart';
import 'package:fund_me_zuri/Screens/Home/home_screen.dart';
import 'package:fund_me_zuri/Screens/Onboarding/onboarding_screen.dart';
import 'package:fund_me_zuri/Screens/Splash/splash_screen.dart';
import 'package:fund_me_zuri/constants.dart';
import 'package:fund_me_zuri/routes.dart';

import 'Screens/Donorlogin/donor_login_screen.dart';

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
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Nunito',
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kPrimaryColor),
          bodyText2: TextStyle(color: kPrimaryColor),
        ),
        primaryColor: kPrimaryLightColor,
      ),
      // home: HomeScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
