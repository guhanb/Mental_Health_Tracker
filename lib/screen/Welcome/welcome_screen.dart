// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';

import 'package:mental_health_app/constant.dart';
import 'package:mental_health_app/screen/Welcome/login_page.dart';

import 'package:mental_health_app/utils/navBar.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryDarkColor,
      body:
          Column(crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
        SizedBox(
          height: 80,
        ),
        Image.asset(
          meditationImg,
          height: height * 0.5,
        ),
        SizedBox(
          height: 30,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Mind Checker is an app that helps you to control anxiety",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontFamily: "ReemKufi",
                fontWeight: FontWeight.bold,
                //fontWeight: FontWeight.w900,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.all(25),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue,
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    minimumSize: Size(88, 36),
                  ),
                  onPressed: () {
                    _navigateToHomeScreen(context);
                  },
                  child: Text(
                    "Get Start",
                    selectionColor: Colors.white,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      letterSpacing: 1,
                    ),
                  ),
                )),
          ],
        ),
      ]),
    );
  }

  void _navigateToHomeScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Login()));
  }
}
