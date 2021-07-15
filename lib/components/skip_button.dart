import 'package:flutter/material.dart';
import 'package:fund_me_zuri/constants.dart';
class SkipButton extends StatelessWidget {
  final String text;
  final Function press;
  const SkipButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Align(
        alignment: FractionalOffset.center,
        child: TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
            primary: kPrimaryColor,
          ),
          onPressed: press,
          child: const Text('Skip'),
        ),
      ),
    );
  }
}