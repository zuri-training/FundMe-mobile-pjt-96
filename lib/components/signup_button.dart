import 'package:flutter/material.dart';
import 'package:fund_me_zuri/constants.dart';
class SignupButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const SignupButton({
    Key key,
    this.press,
    this.text,
    this.color,
    this.textColor = kPrimaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: kPrimaryColor,
            letterSpacing: -1.5,
          ),
        ),
        onPressed: press,
        style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
          minimumSize: Size(350.0, 50),
          side: BorderSide(width: 2, color: kPrimaryColor),
          padding:
          EdgeInsets.only(left: 50, right: 50, bottom: 5, top: 5),
          textStyle:
          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),

        ),

      ),
    );
  }
}