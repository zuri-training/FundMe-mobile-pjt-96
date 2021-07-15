import 'package:flutter/material.dart';
import 'package:fund_me_zuri/Screens/Login/login_screen.dart';
import 'package:fund_me_zuri/Screens/Signup/signup_screen.dart';
import 'package:fund_me_zuri/components/login_button.dart';
import 'package:fund_me_zuri/components/signup_button.dart';
import 'package:fund_me_zuri/constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 300),
        Center(
          child: Text(
            'Become a part of this ',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
              fontSize: 24,
            ),
          ),
        ),
        SizedBox(height: 15),
        Center(
          child: Text(
            'initiative. Let’s go!',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
              fontSize: 24,
            ),
          ),
        ),
        SizedBox(height: 50),
        LoginButton(
          text: 'Login',
          press: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Login();
                },
              ),
            );
          },
        ),
        SizedBox(
          height: 10,
        ),
        SignupButton(
          text: 'Sign up',
          textColor: kPrimaryColor,
          press: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Signup();
                },
              ),
            );
          },
        )
      ],
    );
  }
}
