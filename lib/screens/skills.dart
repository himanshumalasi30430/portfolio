import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:portfolio/shared/socicon_icons.dart';
import '../shared/header.dart';

class Skills extends StatefulWidget {
  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  List<String> _skills = ['HTML', 'CSS', 'JS', 'Python', 'Flask', 'Django','Machine Learning'];

  List<double> _proficiency = [
    0.9,
    0.8,
    0.7,
    0.6,
    0.7,
    0.8,
    0.9,
  ];
  
  List<String> img = [
    'html.jpg',
    'css.jpg',
    'js.jpg',
    'python.jpg',
    'flask.jpg',
    'django.jpg',
    'ml.jpg',
  ];

  List<Widget> _skillWidgetCreator() {
    List<Widget> skill = [];
    for (int i = 0; i < _skills.length; i++) {

      skill.add(Container(
        child: Column(
          children: [
            ListTile(
              leading: Image.asset('assets/images/'+img[i],height: 40,),
              title: Text(_skills[i]),
              trailing: Text('${_proficiency[i] * 100} %'),
            ),
            LinearPercentIndicator(
              // width: 140.0,
              lineHeight: 14.0,
              percent: _proficiency[i],
              animationDuration: 2000,
              restartAnimation: true,
              backgroundColor: Colors.grey,
              animation: true,
              progressColor: Colors.blue,
            ),
          ],
        ),
      ));
      skill.add(SizedBox(height: 8,));
    }
    return skill;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: double.maxFinite,
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Container(
          child: Column(
            children: [
              Text(
                'Skills',
                style: headerStyle,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Velit optio id vero amet, alias architecto consecteturerror eum eaque sit.',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Roboto'
                ),
              ),
              ..._skillWidgetCreator(),
            ],
          ),
        )
    );
  }
}
