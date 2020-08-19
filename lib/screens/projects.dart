import 'package:flutter/material.dart';
import '../shared/header.dart';

class Project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        height: double.maxFinite,
        child: Column(
          children: [
            Text(
              'Projects',
              style: headerStyle,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Column(children: [
                Stack(
                  fit: StackFit.loose,
                  alignment: AlignmentDirectional.bottomStart,
                  children: [
                    Image.asset(
                      'assets/images/chatbot.png',
                      fit: BoxFit.cover,
                    ),
                    Container(
                        height: 70,
                        padding: EdgeInsets.all(10),
                        color: Colors.black54,
                        width: double.maxFinite,
                        child: Text(
                          'SoccerBot',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            // fontWeight: FontWeight.bold,
                          ),
                        )
                    ),
                  ],
                ),
              ]),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  Image.asset('assets/images/trip.jpg'),
                  Container(
                      height: 70,
                      padding: EdgeInsets.all(10),
                      color: Colors.black54,
                      width: double.maxFinite,
                      child: Text('PlanMyTrip ',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            //fontWeight: FontWeight.bold,
                          )
                      )
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
