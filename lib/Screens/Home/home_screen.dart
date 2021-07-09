import 'package:flutter/material.dart';
import 'package:fund_me_zuri/Screens/Home/components/body.dart';
import 'package:fund_me_zuri/donate_icons.dart';

import '../../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
            backgroundColor: kPrimaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Donate',
            backgroundColor: kPrimaryColor,
          ),

          BottomNavigationBarItem(
              icon: Icon(Donate.hand_holding_heart),
              label: 'Fundraising',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: kPrimaryColor,
          ),

        ],
      ),
    );
  }
}
