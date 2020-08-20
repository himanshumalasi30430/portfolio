import '../shared//socicon_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


// Running on MI A2
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hi,',
          style: TextStyle(
              fontFamily: 'Poppins',
              letterSpacing: 2,
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(14, 36, 49, 1)),
        ),
        SizedBox(height: 15.0),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'I\'m ',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    letterSpacing: 2,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(14, 36, 49, 1)),
              ),
              Text(
                'Himanshu',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    letterSpacing: 2,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(64, 112, 244, 1)),
              )
            ]),
        SizedBox(height: 15.0),
        Text(
          'Flutter Developer',
          style: TextStyle(
              fontFamily: 'Poppins',
              letterSpacing: 2,
              fontSize: 45.0,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(14, 36, 49, 1)),
        )
      ],
    );
    var topContent = Container(
      // color: Colors.grey[700],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          topContentText,
        ],
      ),
    );
    var iconList = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: Colors.blue[800],
          child: IconButton(
            icon: Icon(
              Socicon.linkedin,
              color: Colors.white,
            ),
            onPressed: () {
              _launchURL(
                  'https://www.linkedin.com/in/himanshu-malasi-7ba160160');
            },
            color: Color.fromRGBO(14, 36, 49, 1),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        CircleAvatar(
          radius: 24,
          backgroundColor: Colors.black,
          child: IconButton(
              icon: Icon(
                Socicon.github,
                color: Colors.white,
              ),
              onPressed: () {
                _launchURL('https://github.com/himanshumalasi');
              },
              color: Color.fromRGBO(14, 36, 49, 1)),
        )
      ],
    );
    var bottomImageContainer = Container(
      width: 300,
      height: 330,
      child: Image.asset('assets/images/himanshu.png'),
    );
    var bottomContent = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          iconList,
          bottomImageContainer,
        ],
      ),
    );
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Container(
        padding: EdgeInsets.all(width * 0.03),
        color: Colors.white,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 35),
            topContent,
            SizedBox(height: 50),
            bottomContent,
          ],
        ));
  }
}
