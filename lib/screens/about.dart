import 'package:flutter/material.dart';
import '../shared/header.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: double.maxFinite,
        color: Colors.white,
        child: Container(
          child: Column(
            children: [
              Text(
                'About',
                style: headerStyle,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 350,
                // color: Colors.grey[300],
                child: Image.asset(
                  'assets/images/himanshu_about.jpg',
                  width: 300,
                  height: 350,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height:20),
              Text(
                'I\'m Himanshu',
                style: TextStyle(
                    fontSize: 35,
                    letterSpacing: 1.5,
                    color: Color.fromRGBO(14, 36, 49, 1),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Text(
                  'I am a hard working, honest individual. I am a good timekeeper, always willing to learn new skills. I am friendly, helpful and polite, have a good sense of humour. I am able to work independently in busy environments and also within a team setting. I am outgoing and tactful, and able to listen effectively when solving problems.',style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1.5,
                    fontFamily: 'Roboto'
                ),
                ),
              ),

            ],
          ),
        ));
  }
}
