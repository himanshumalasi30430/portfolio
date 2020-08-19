import 'package:flutter/material.dart';
import '../shared/header.dart';

class Education extends StatefulWidget {
  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
  List<String> _designation = [
    'Bachelor of Technology',
    'XII (Senior Secondary), Science',
    'X (Secondary)'
  ];
  List<String> _institution = [
    'G.B. Pant Government Engineering College',
    'Spring Meadows Public School',
    'Spring Meadows Public School'
  ];
  List<String> _marks = ['8.99 CGPA', '94%', '8.4 CGPA'];
  List<String> _year = ['2020', '2016', '2014'];
  List<Widget> _createEducationCard() {
    List<Widget> result = [];
    for (int i = 0; i < _designation.length; i++) {
      if (i % 2 == 0) {
        result.add(Container(
          height: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _designation[i],
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    _institution[i],
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  Text(_marks[i]),
                ],
              ),
              CircleAvatar(
                radius: 50,

                child: Text(_year[i],style: TextStyle(
                  color: Colors.white,
                ),),
                backgroundColor: Colors.green,
              ),
            ],
          ),
        ));
        result.add(SizedBox(height: 20,));
      } else {
        result.add(Container(
            height: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 50,
                  child: Text(_year[i],style: TextStyle(color: Colors.white),),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _designation[i],
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      _institution[i],
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                    Text(_marks[i]),
                  ],
                ),
              ],
            ),
          ));
        result.add(SizedBox(height: 20,));
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(15,10,15,10),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: [
            Text(
              'Education',
              style: headerStyle,
            ),
            SizedBox(height: 20,),
            ..._createEducationCard(),
          ],
        ));
  }
}
