import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../constants.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 40),
        Container(
          padding: EdgeInsets.only(left: 300),
          child: Row(
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
          ),
        ),
        SizedBox(height: 15),
        Column(
          children: <Widget>[
            Text(
              'Welcome, Nkechi',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            Text('Thank you for making education free',
                style: TextStyle(
                  color: Colors.black87,
                )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  labelText: 'Search',
                ),
              ),
            ),
            SingleChildScrollView(
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
            )
          ],
        ),
        Column(
          children: <Widget>[

          ],
        ),
      ],
    );
  }
}
