// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:mental_health_app/constant.dart';
import 'package:mental_health_app/screen/Home/home_page.dart';
import 'package:mental_health_app/screen/Welcome/sign_in_page.dart';
import 'package:mental_health_app/utils/navBar.dart';
//import 'package:flutter_application_1/signin.dart';

// void main() => runApp(const MyApp());

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  //static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryDarkColor,
      body: const logpage(),
    );
  }
}

class logpage extends StatefulWidget {
  const logpage({Key? key}) : super(key: key);

  @override
  State<logpage> createState() => _loginpage();
}

class _loginpage extends State<logpage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'MIND CHECKER',
                  style: TextStyle(
                      height: 3,
                      color: Color.fromARGB(255, 247, 248, 249),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(30),
                child: const Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 30,
                      height: 1,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 247, 248, 249)),
                )),
            Container(
                alignment: Alignment(-0.8, 0.1),
                child: Text(
                  'Email',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 247, 248, 249)),
                )),
            Container(
              padding: EdgeInsets.fromLTRB(10, 4, 0, 6),
              height: 60,
              child: TextFormField(
                  cursorColor: Color.fromARGB(255, 12, 12, 12),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter your Email',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  )),
            ),
            Container(
                alignment: Alignment(-0.8, 0.1),
                padding: EdgeInsets.fromLTRB(1, 8, 0, 0),
                child: Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 247, 248, 249)),
                )),
            Container(
              padding: EdgeInsets.fromLTRB(10, 4, 0, 6),
              height: 60,
              child: TextFormField(
                  cursorColor: Color.fromARGB(255, 6, 5, 5),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter the Password',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  )),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              style: TextButton.styleFrom(
                  primary: Colors.white, alignment: Alignment.centerRight),
              child: const Text(
                'Forgot Password?',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                child: ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MainNavBar()));
                      print(nameController.text);
                      print(passwordController.text);
                    },
                    style: TextButton.styleFrom(
                      primary: Color.fromARGB(255, 10, 9, 9),
                      backgroundColor: Color.fromARGB(255, 169, 234, 234),

                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder(
                          //to set border radius to button
                          borderRadius: BorderRadius.circular(30)),
                    ))),
            Divider(
              height: 60,
              color: Color.fromARGB(255, 250, 246, 246),
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            Row(
              children: <Widget>[
                const Text('If you does not have account?',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 247, 248, 249))),
                // Text(Colors.purple)
                TextButton(
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onPressed: () {
                      //signup screen
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignInPage()));
                    },
                    style: TextButton.styleFrom(
                      primary: Color.fromARGB(255, 248, 245, 245),
                    ))
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}// ignore_for_file: prefer_const_constructors, sort_child_properties_last

