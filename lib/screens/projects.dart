import 'package:flutter/material.dart';
import '../shared/header.dart';
import 'package:url_launcher/url_launcher.dart';

class Project extends StatelessWidget {

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        height: double.maxFinite,
        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Projects',
              style: headerStyle,
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: (){
                _launchURL('https://github.com/himanshumalasi/soccerbot');
              },
              child:Container(
                width: double.infinity,
                child: Stack(
                  fit: StackFit.loose,
                  // alignment: AlignmentDirectional.bottomStart,
                  children: [
                    Image.asset(
                      'assets/images/chatbot.png',
                      fit: BoxFit.cover,
                      height: 200,
                      width: double.infinity,
                      // color: Color.fromRGBO(0, 0, 0, 0.2),
                    ),
                    Container(
                        height: 200,
                        padding: EdgeInsets.all(10),
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            'SoccerBot',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                              fontFamily: 'Roboto',
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                    ),

                  ],
                ),
              ),
            ),
            
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: (){
                _launchURL('https://github.com/mukulvashisht1026/PlanMyTrip');
              },
              child: Container(
                width: double.infinity,
                child: Stack(
                  fit: StackFit.loose,
                  // alignment: AlignmentDirectional.bottomStart,
                  children: [
                    Image.asset(
                      'assets/images/trip.jpg',
                      fit: BoxFit.cover,
                      height: 200,
                      width: double.infinity,
                    ),
                    Container(
                        height: 200,
                        padding: EdgeInsets.all(10),
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        width: double.infinity,
                        child: Center(
                          child: Text('PlanMyTrip ',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                //fontWeight: FontWeight.bold,
                              )),
                        )),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
