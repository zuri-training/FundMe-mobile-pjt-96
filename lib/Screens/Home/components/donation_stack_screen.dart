import 'package:flutter/material.dart';

class DonationStack extends StatelessWidget {
  final String text;
  final String image;
  final double value;
  final String state;

  const DonationStack({
    Key key,
    this.text, this.image, this.value, this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Image.asset(image,
            height: 81,
            width: 100,),
        ),
        Expanded(
          child: Column(
            children: [
              Text(text),
              Row(
                children: [
                  Expanded(
                    child: LinearProgressIndicator(
                      value: value,
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text(state)
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
