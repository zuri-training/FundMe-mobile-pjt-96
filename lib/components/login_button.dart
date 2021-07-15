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
            minimumSize: Size(350.0, 50),
            padding: EdgeInsets.only(left:50,right: 50,bottom: 5,top:5),
            textStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
