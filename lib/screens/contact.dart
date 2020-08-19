import 'package:flutter/material.dart';
import './footer.dart';
import '../shared/header.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: height * 0.8,
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(children: [
                Text(
                  'Contact',
                  style: headerStyle,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.mail_outline),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'himanshu.malasi@unthinkable.co',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '7982352334',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on),
                    //Icon(Socicon.airbnb),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'New Delhi, Delhi',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                )
              ]),
            ),
            Footer(height),
          ],
        ));
  }
}
