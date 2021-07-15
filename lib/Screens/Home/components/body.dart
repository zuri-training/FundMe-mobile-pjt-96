import 'package:flutter/material.dart';
import 'package:fund_me_zuri/size_config.dart';

import '../../../constants.dart';
import '../../../constants.dart';
import '../../../constants.dart';
import 'donation_stack_screen.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          SizedBox(height: 40),
          Container(
            child: Notification(),
          ),
          SizedBox(height: 15),
          Header(),
          NavTab(),
          Container(
            decoration: BoxDecoration(
              color: kPrimaryLightColor
            ),
            child: DonationStack(
              image: 'assets/images/Idara.jpg',
              text: 'Help Esther continue her education',
              value: 0.8,
              state: '80%',
            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
                color: kPrimaryLightColor
            ),
            child: DonationStack(
              image: 'assets/images/Nonso.jpg',
              text: 'Create conducive learning for GHS Abuja',
              value: 0.55,
              state: '50%',
            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
                color: kPrimaryLightColor
            ),
            child: DonationStack(
              image: 'assets/images/chlidren.JPG',
              text: 'Thank you',
              value: 0.95,
              state: '95%',
            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
                color: kPrimaryLightColor
            ),
            child: DonationStack(
              image: 'assets/images/Gerry.jpg',
              text: 'Project 1000 is a donation goal aimed at sponsoring 1000 kids to school ',
              value: 0.2,
              state: '20%',
            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
                color: kPrimaryLightColor
            ),
            child: DonationStack(
              image: 'assets/images/TandK.jpg',
              text: 'Taiwo and Kehinde need to go back to scholl',
              value: 0.4,
              state: '40%',
            ),
          ),

        ],
      ),

    );
  }
}


class NavTab extends StatelessWidget {
  const NavTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              child: Text('Donations'),
              style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
                primary: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextButton(
              onPressed: () {},
              child: Text("NGO's"),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                primary: kPrimaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextButton(
              onPressed: () {},
              child: Text('School items'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                primary: kPrimaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              child: Text('Gallery'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                primary: kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Welcome, Nkechi',
          style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
        Text(
          'Thank you for making education free',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        SizedBox(height:5,),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
            labelText: 'Search',
            contentPadding: EdgeInsets.symmetric(horizontal: 40),
          ),
        ),
      ],
    );
  }
}

class Notification extends StatelessWidget {
  const Notification({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.notifications,
          color: Colors.grey,
          size: 24.0,
          semanticLabel: 'notifications',
        ),
        SizedBox(width: 10),
        CircleAvatar(
          backgroundImage: null,
          backgroundColor: Colors.grey,
          maxRadius: 15,
        )
      ],
    );
  }
}
