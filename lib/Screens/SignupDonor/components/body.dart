import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../components/login_button.dart';
import '../../../constants.dart';
import '../../Onboarding1/onboarding1_screen.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 50),
        Container(
          alignment: Alignment.center,
          child: Image.asset('assets/images/fmlogo.png'),
        ),
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.all(8),
          child: TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email Address',
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Phone Number',
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Confirm Password',
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
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Text(
            'OR',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: Size(350.0, 50),
            side: BorderSide(color: kPrimaryColor),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                'assets/icons/google_icon.png',
                height: 48.0,
              ),
              Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: new Text(
                    "Sign in with Google",
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        OutlinedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              minimumSize: Size(350.0, 50),
              side: BorderSide(color: kPrimaryColor)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                'assets/icons/facebook_icon.png',
                height: 48.0,
              ),
              Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: new Text(
                    "Sign in with Facebook",
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
