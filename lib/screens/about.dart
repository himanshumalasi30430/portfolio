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
                  'assets/images/about.jpg',
                  width: 300,
                  height: 350,
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
                  'Lorem, ipsum dolor sit amet consectetur adipisicing elit. '
                      'Voluptate cum expedita quo culpa tempora, assumenda, '
                      'quis fugiat ut voluptates soluta, aut earum '
                      'nemo recusandae cumque perferendis! Recusandae alias accusamus atque.',style: TextStyle(
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
