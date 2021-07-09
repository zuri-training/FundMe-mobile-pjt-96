import 'package:flutter/material.dart';
import 'package:fund_me_zuri/components/login_button.dart';

import '../../../constants.dart';
class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
          text: 'Sign in',
          press: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return Onboarding1Screen();
            //     },
            //   ),
            // );
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Don't have an account?"),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: TextStyle(fontSize: 16),
                primary: kPrimaryColor,
              ),
              onPressed: (){},
              child: Text('Sign Up'),
            ),
          ],
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
