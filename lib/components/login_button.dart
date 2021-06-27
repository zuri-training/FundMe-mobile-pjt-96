import 'package:flutter/material.dart';

import '../constants.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final Function press;
  const LoginButton({
    Key key, this.text, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(text),
        onPressed: press,
        style: ElevatedButton.styleFrom(
            primary: kPrimaryColor,
            alignment: Alignment.center,
            padding: EdgeInsets.only(left:100,right: 100,bottom: 10,top:10),
            textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
