import 'package:flutter/material.dart';
import 'package:fund_me_zuri/components/login_button.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 70,
        ),
        Text("Create an Account",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: kPrimaryColor,
            fontSize: 24,
            letterSpacing: -1.5,
          ),),
        SizedBox(
          height: 15,
        ),
        Text(
          "Personal Information",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: kPrimaryColor,
            fontSize: 18,
            letterSpacing: -1.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 16.0, top: 3.5, right: 16.0, bottom: 3.5),
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
              labelText: 'Date of Birth',
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
              labelText: 'Country',
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
              labelText: 'Phone number',
            ),
          ),
        ),
        Text(
          "Address",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: kPrimaryColor,
            fontSize: 18,
            letterSpacing: -1.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 16.0, top: 3.5, right: 16.0, bottom: 3.5),
          child: TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'State',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 16.0, top: 3.5, right: 16.0, bottom: 3.5),
          child: TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'City',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 16.0, top: 3.5, right: 16.0, bottom: 3.5),
          child: TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Personal address',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 16.0, top: 3.5, right: 16.0, bottom: 3.5),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Postal code',
            ),
          ),
        ),
        SizedBox(height: 5),
        Center(
          child: LoginButton(
            text: 'Next',
            press: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return LoginSignupScreen();
              //     },
              //   ),
              // );
            },
          ),
        ),
      ],
    );
  }
}
