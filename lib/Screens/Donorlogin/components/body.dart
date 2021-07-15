import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fund_me_zuri/components/form_error.dart';
import 'package:fund_me_zuri/components/login_button.dart';
import 'package:fund_me_zuri/size_config.dart';

import '../../../constants.dart';
import 'donor_sign_in.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SvgPicture.asset('assets/images/fundMeLogo.svg'),
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            DonorSignin(),
            Container(height: getProportionateScreenHeight(30),)
          ],
        ),
      ),
    );
  }
}


// class Body extends StatelessWidget {
//   const Body({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SizedBox(
//         width: double.infinity,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 40,
//           ),
//           child:
//         ),
//       ),
//     );
//   }
// }
//
// class SignInForm extends StatefulWidget {
//   const SignInForm({Key key}) : super(key: key);
//
//   @override
//   _SignInFormState createState() => _SignInFormState();
// }
//
// class _SignInFormState extends State<SignInForm> {
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       child: Column(
//         children: [
//           TextFormField(
//             decoration: InputDecoration(
//               labelText: "Email",
//               hintText: "Enter your email",
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class SignInForm extends StatefulWidget {
//   const SignInForm({Key key}) : super(key: key);

//   @override
//   _SignInFormState createState() => _SignInFormState();
// }
//
// class _SignInFormState extends State<SignInForm> {
//   final _formKey = GlobalKey<FormState>();
//   final List<String> errors = ['Error'];
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               keyboardType: TextInputType.emailAddress,
//               validator: (value) {
//                 if (value.isEmpty) {
//                   setState(() {
//                     errors.add('Please enter Email');
//                   });
//                 }
//                 return null;
//               },
//               decoration: InputDecoration(
//
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                   borderSide: BorderSide(color: kPrimaryColor),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               obscureText: true,
//               keyboardType: TextInputType.emailAddress,
//               decoration: InputDecoration(
//                 labelText: "Password",
//                 hintText: "Enter your password",
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                   borderSide: BorderSide(color: kPrimaryColor),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                   borderSide: BorderSide(color: kPrimaryColor),
//                 ),
//               ),
//             ),
//           ),
//           // Padding(
//           //   padding: const EdgeInsets.all(8.0),
//           //   child: Row(
//           //     children: [
//           //       SvgPicture.asset(
//           //         "assets/icons/Error.svg",
//           //         height: 10,
//           //         width: 10,
//           //       ),
//           //       SizedBox(
//           //         width: 5,
//           //       ),
//           //       Text(errors[0]),
//           //     ],
//           //   ),
//           // ),
//           LoginButton(
//             text: 'Sign in',
//             press: () {
//               if (_formKey.currentState.validate()) {
//                 _formKey.currentState.save();
//               }
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(
//               //     builder: (context) {
//               //       return Onboarding1Screen();
//               //     },
//               //   ),
//               // );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
