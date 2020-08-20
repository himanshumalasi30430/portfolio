import 'package:flutter/material.dart';
import 'package:portfolio/shared/socicon_icons.dart';
import './footer.dart';
import '../shared/header.dart';

class Contact extends StatelessWidget {
  List<IconData> _icons = [
    Socicon.mail,
    Icons.phone,
    Icons.location_on,
  ];
  List<String> _names = [
    'himanshu.malasi@unthinkable.co',
    '7982352334',
    'New Delhi, Delhi',
  ];
  List<Widget> _create(){
    List<Widget> result = [];
    for(int i=0;i<_icons.length;i++){
      result.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(_icons[i]),
          SizedBox(
            width: 15,
          ),
          Text(
            _names[i],
            style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700),
          ),
        ],));
      result.add(SizedBox(
        height: 25,
      ));
    }
    return result;
  }


  @override
  Widget build(BuildContext context)  {
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
                ..._create(),
              ]),
            ),
            Footer(height),
          ],
        ));
  }
}
