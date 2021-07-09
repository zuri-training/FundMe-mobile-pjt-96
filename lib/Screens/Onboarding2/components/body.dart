import 'package:flutter/material.dart';
import 'package:fund_me_zuri/Screens/Donor/donor_screen.dart';
import 'package:fund_me_zuri/Screens/LoginSignup/login_signup_screen.dart';
import 'package:fund_me_zuri/components/login_button.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 100),
        Text(
          'Change the world!',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green,
            fontSize: 24,
          ),
        ),
        SizedBox(height: 15),
        Text(
          'One step at a time',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.green,
            fontSize: 18,
            letterSpacing: -1.5,
          ),
        ),
        SizedBox(height: 100),
        Container(
          child: Image.asset('assets/images/onboarding3.png'),
        ),
        SizedBox(height: 150),
        Container(
          child: Image.asset('assets/images/progressBar3.png'),
        ),
        SizedBox(height: 15),
        Center(
          child: LoginButton(
            text: 'Next',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginSignupScreen();
                  },
                ),
              );
            },
          ),
        ),
        // SizedBox(height: 15),
        // LoginButton(
        //   text: 'Beneficiary',
        //   press: () {},
        // ),
        // SizedBox(height: 15),
        // LoginButton(
        //   text: 'Anonymous',
        //   press: () {},
        // ),

        // Container(
        //   padding: EdgeInsets.all(10.0),
        //   child: Image.asset('assets/images/onBoarding3.png'),
        // ),
        // SizedBox(height: 20),
        // Text(
        //   'Become a part of this',
        //   textDirection: TextDirection.ltr,
        //   style: TextStyle(
        //     fontWeight: FontWeight.bold,
        //     color: Colors.green,
        //     fontSize: 20,
        //   ),
        // ),
        // SizedBox(height: 5),
        // Text(
        //   'initiative. Login as:',
        //   textDirection: TextDirection.ltr,
        //   style: TextStyle(
        //     fontWeight: FontWeight.bold,
        //     color: Colors.green,
        //     fontSize: 20,
        //   ),
        // ),









        // Container(
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.circular(4),
        //     child: Stack(
        //       children: <Widget>[
        //         Positioned.fill(
        //           child: Container(
        //             decoration: const BoxDecoration(
        //               gradient: LinearGradient(
        //                 colors: <Color>[
        //                   Color(0xFF43A047),
        //                   Color(0xFF2E7D32),
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ),
        //         TextButton(
        //           style: TextButton.styleFrom(
        //             padding: const EdgeInsets.all(16.0),
        //             primary: Colors.white,
        //             textStyle: const TextStyle(fontSize: 20),
        //           ),
        //           onPressed: () {},
        //           child: const Text('            Donor         '),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // SizedBox(height: 15),
        // Container(
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.circular(4),
        //     child: Stack(
        //       children: <Widget>[
        //         Positioned.fill(
        //           child: Container(
        //             decoration: const BoxDecoration(
        //               gradient: LinearGradient(
        //                 colors: <Color>[
        //                   Color(0xFF43A047),
        //                   Color(0xFF2E7D32),
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ),
        //         TextButton(
        //           style: TextButton.styleFrom(
        //             padding: const EdgeInsets.all(16.0),
        //             primary: Colors.white,
        //             textStyle: const TextStyle(fontSize: 20),
        //           ),
        //           onPressed: () {
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                 builder: (context) {
        //                   return DonorScreen();
        //                 },
        //               ),
        //             );
        //           },
        //           child: const Text('       Beneficiary      '),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // // SkipButton(
        // //   press: () {
        // //     Navigator.push(
        // //       context,
        //       MaterialPageRoute(
        //         builder: (context) {
        //           return Onboarding2Screen();
        //         },
        //       ),
        //     );
        //   },
        // ),
      ],
    );
  }
}
