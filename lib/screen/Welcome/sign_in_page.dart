// ignore_for_file: prefer_const_constructors, sort_child_properties_last, camel_case_types
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mental_health_app/constant.dart';
import 'package:mental_health_app/screen/Welcome/login_page.dart';
import 'package:mental_health_app/utils/navBar.dart';
//import 'package:mental_health_app/screen/Welcome/log_in_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: primaryDarkColor, body: const signin());
  }
}

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // final _auth = FirebaseAuth.instance;
  // String email;
  // String password;
  // bool showspinner = false;

  @override
  Widget build(BuildContext context) {
    return
        // padding: const EdgeInsets.all(10),
        ListView(children: <Widget>[
      Container(
          alignment: Alignment.center,
          // padding: const EdgeInsets.all(10),
          child: const Text('MIND CHECKER',
              style: TextStyle(
                  height: 3,
                  color: Color.fromARGB(255, 247, 248, 249),
                  fontWeight: FontWeight.w500,
                  fontSize: 30))),
      Container(
          // alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: const Text(
            'Signup',
            style: TextStyle(
                fontSize: 30,
                height: 1,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 247, 248, 249)),
          )),
      Container(
          alignment: Alignment(-0.8, 0.1),
          child: Text(
            'First Name',
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
              hintText: 'Enter your First Name',
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
            'Last Name',
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
              hintText: 'Enter the Last Name',
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
            cursorColor: Color.fromARGB(255, 6, 5, 5),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Enter the Email',
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
      Container(
          alignment: Alignment(-0.8, 0.1),
          padding: EdgeInsets.fromLTRB(1, 8, 0, 0),
          child: Text(
            'Re-Enter Password',
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
              hintText: 'Re-Enter the Password',
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            )),
      ),
      Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      ),
      Container(
          height: 50,
          padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
          child: ElevatedButton(
              child: const Text('Sign Up'),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Login()));
                // print(nameController.text);
                // print(passwordController.text);
              },
              style: TextButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 10, 9, 9),
                backgroundColor: Color.fromARGB(255, 169, 234, 234),

                elevation: 3, //elevation of button
                shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(30)),
              ))),
      Divider(
        height: 35,
        color: Color.fromARGB(255, 250, 246, 246),
        thickness: 2,
        indent: 20,
        endIndent: 20,
      ),
      Row(
        // ignore: sort_child_properties_last
        children: <Widget>[
          const Text('Already have an account?',
              style: TextStyle(
                  fontSize: 12, color: Color.fromARGB(255, 247, 248, 249))),
          // Text(Colors.purple)
          TextButton(
              child: const Text(
                'Log in',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Login()));
              },
              style: TextButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 248, 245, 245),
              ))
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    ]);
  }
}
