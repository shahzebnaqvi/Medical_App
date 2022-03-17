import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/Constants/constants.dart';
import 'package:medical_app/Screens/additionaltools/bmi.dart';
import 'package:medical_app/Screens/auth/login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: ListView(children: [
            Container(
              child: Image.network('assets/Sign_up.jpg'),
            ),
            Divider(
              height: MediaQuery.of(context).size.height * 0,
              thickness: 1,
            ),
            Container(
              // padding: EdgeInsets.all(10),
              child: Text("Sign Up",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      decorationColor: Constants.ligtbluecolor)),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child:TextField(
                     decoration: InputDecoration(
                     border: InputBorder.none,
                    labelText: 'UserName',
                   labelStyle: TextStyle(fontSize: 12)
                )
                ), 
             
            ),
            Container(
              padding: EdgeInsets.all(10),
              child:TextField(
                     decoration: InputDecoration(
                     border: InputBorder.none,
                    labelText: 'Email',
                   labelStyle: TextStyle(fontSize: 12)
                )
                ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child:TextField(
                    obscureText: !this._showPassword,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                      labelText: 'Password',
                      suffixIcon: IconButton(
                          icon: Icon(
                            Icons.remove_red_eye,
                            color:this._showPassword ? Colors.blue : Colors.grey,
                          ),
                          onPressed: () {
                            setState(
                                () => this._showPassword = !this._showPassword);
                          }),
                    )
                    ), 
            ),
             Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                )),
            Container(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Already have an account?',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                      children: <TextSpan>[
                        new TextSpan(
                          text: 'Login in',
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                        ),
                      ])),
            ),
           
          ])),
    );
  }
}
