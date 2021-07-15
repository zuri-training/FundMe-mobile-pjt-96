import 'package:flutter/material.dart';
import 'package:fund_me_zuri/components/login_button.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Fullname',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 16.0, top: 5.0, right: 16.0, bottom: 5.0),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email address',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 16.0, top: 5.0, right: 16.0, bottom: 5.0),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone number',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 16.0, top: 5.0, right: 16.0, bottom: 5.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          LoginButton(
            text: 'Create account',
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
          SizedBox(height: 15,),
          Text(
            '------ OR ------',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 15,),
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
                    "Sign up with Google",
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
                    "Sign up with Facebook",
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
