import 'package:flutter/material.dart';
import 'package:fund_me_zuri/Screens/Donor/components/background.dart';
import 'package:fund_me_zuri/Screens/Onboarding1/onboarding1_screen.dart';
import 'package:fund_me_zuri/components/login_button.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 200),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
        ),
        LoginButton(
          text: 'Login',
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
        SizedBox(height: 10),
        Text("I do not have an account"),
        LoginButton(
          text: 'SignUp',
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
    );
  }
}

