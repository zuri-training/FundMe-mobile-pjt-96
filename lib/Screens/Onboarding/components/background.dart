import 'package:flutter/material.dart';
class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container (
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Image.asset('assets/images/Vector.png'),
          ),
          Positioned(
            top: 350,
            left: 75,
            child: Image.asset('assets/images/fmlogo.png'),
          ),
          child,

        ],
      ),
    );
  }
}