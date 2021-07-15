import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fund_me_zuri/Screens/Home/home_screen.dart';
import 'package:fund_me_zuri/components/form_error.dart';
import 'package:fund_me_zuri/components/login_button.dart';
import 'package:fund_me_zuri/services/auth_service.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class DonorSignin extends StatefulWidget {
  const DonorSignin({Key key}) : super(key: key);

  @override
  _DonorSigninState createState() => _DonorSigninState();
}

class _DonorSigninState extends State<DonorSignin> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          LoginButton(
            text: 'Log In',
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                AuthService().login(email, password).then((value){
                  if (value.data['Success']){
                    String token = value.data['token'];
                    Fluttertoast.showToast(
                      msg: 'Confirmed',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  }
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen();
                    },
                  ),
                );
              }
            },
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Row(
            children: [
              Checkbox(
                value: remember,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text('Remember me'),
              Spacer(),
              Text(
                'Forgot password?',
              )
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          SocialSignIn(),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length > 6 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
        } else if (value.length < 6 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.never,
        contentPadding: EdgeInsets.symmetric(horizontal: 40),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor),
          gapPadding: 10,
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
      },
      validator: (value) {
        if (value.isEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your Email',
        floatingLabelBehavior: FloatingLabelBehavior.never,
        contentPadding: EdgeInsets.symmetric(horizontal: 40),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor),
          gapPadding: 10,
        ),
      ),
    );
  }
}

class SocialSignIn extends StatelessWidget {
  const SocialSignIn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: Size(350.0, 50),
            side: BorderSide(color: kPrimaryColor),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                'assets/icons/google_icon.png',
                height: 48.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: new Text(
                  "Sign in with Google",
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        OutlinedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              minimumSize: Size(350.0, 50),
              side: BorderSide(color: kPrimaryColor)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                'assets/icons/facebook_icon.png',
                height: 48.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: new Text(
                  "Sign in with Facebook",
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
