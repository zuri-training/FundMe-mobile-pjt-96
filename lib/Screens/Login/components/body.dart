import 'package:flutter/material.dart';
import 'package:fund_me_zuri/Screens/Benlogin/ben_login_screen.dart';
import 'package:fund_me_zuri/Screens/Donorlogin/donor_login_screen.dart';
import 'package:fund_me_zuri/components/login_button.dart';
import 'package:fund_me_zuri/components/signup_button.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 150,),
          Container(
            child: Image.asset('assets/images/fundMeLogo.png'),
          ),
          SizedBox(height: 250),
          LoginButton(
            text: 'Login in as donor',
            press: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Donorlogin();
                  },
                ),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          SignupButton(
            text: 'Login in as beneficiary',
            textColor: kPrimaryColor,
            press: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Benlogin();
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
