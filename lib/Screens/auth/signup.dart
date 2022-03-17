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
  TextEditingController username = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
  String _dropDownValue = "";
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      body: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: ListView(children: [
            Container(
              child: Image.asset('assets/Sign_up.jpg'),
            ),
            Divider(
              height: MediaQuery.of(context).size.height * 0,
              thickness: 1,
            ),
            Container(
              // padding: EdgeInsets.all(10),
              child: Text("Sign Up",
=======
      body: Center(
        child: Container(
            width: MediaQuery.of(context).size.width * 0.93,
            child: ListView(children: [
              Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.06,
                    bottom: MediaQuery.of(context).size.height * 0.09,
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Image.asset(
                    'assets/login.jpg',
                    width: MediaQuery.of(context).size.width * 0.35,
                  )),
              // CircleAvatar(
              //  child:
              //  ),

              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Get Started',
>>>>>>> 0463a1bfd5a87d819e2149f2d6c9b584fa11df05
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.1,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                    controller: username,
                    cursorColor: Constants.blackcolor,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'UserName',
                    )),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                    controller: email,
                    cursorColor: Constants.blackcolor,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Email',
                    )),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                    controller: password,
                    cursorColor: Constants.blackcolor,
                    obscureText: !this._showPassword,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Password',
                      suffixIcon: IconButton(
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: this._showPassword
                                ? Constants.bluecolor
                                : Constants.mediumColor,
                          ),
                          onPressed: () {
                            setState(
                                () => this._showPassword = !this._showPassword);
                          }),
                    )),
              ),
              Container(
                alignment: Alignment.topRight,
                width: MediaQuery.of(context).size.width * 0.3,
                child: DropdownButton<String>(
                  hint: _dropDownValue == ""
                      ? Text('Gender')
                      : Text(
                          _dropDownValue,
                          style: TextStyle(color: Constants.mainColor),
                        ), // Not necessary for Option 1

                  items: <String>['Male', 'Female'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _dropDownValue = value!;
                    });
                  },
                ),
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Constants.mainColor,
                      minimumSize: Size(
                          20,
                          MediaQuery.of(context).size.height *
                              0.06) // put the width and height you want
                      ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                    ),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.014),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: 'Already have account? ',
                        style: TextStyle(color: Constants.mainColor),
                        children: <TextSpan>[
                          new TextSpan(
                            text: 'Sign uo',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signup()));
                              },
                          ),
                        ])),
              ),
              // ElevatedButton.icon(
              //   icon: CircleAvatar(
              //       backgroundImage: AssetImage(
              //     'assets/google.jpg',
              //   )),
              //   onPressed: () {},
              //   label: Text('Button Text',
              //       style: TextStyle(
              //         color: Colors.black,
              //         fontWeight: FontWeight.bold,
              //       )),
              // ),

              // Container(
              //   padding: EdgeInsets.all(10),
              //   decoration: BoxDecoration(
              //       border: Border.all(color: Colors.grey[300]!, width: 1),
              //       color: Constants.mainColorWhite,
              //       borderRadius: BorderRadius.circular(10)),
              //   child: Row(
              //     children: [
              //       Padding(padding: EdgeInsets.all(10)),
              //       CircleAvatar(
              //         radius: 16,
              //         backgroundColor: Constants.redcolor,
              //         child: Image.asset('assets/google.jpg'),
              //       ),
              //       Padding(padding: EdgeInsets.only(left: 105)),
              //       GestureDetector(
              //         child: Text('Sigin in with Google',
              //             style: TextStyle(
              //                 color: Constants.blackcolor,
              //                 fontSize: 15,
              //                 fontWeight: FontWeight.w500)),
              //         onTap: () {
              //           print('Welcome');
              //         },
              //       ),
              //     ],
              //   ),
              // ),
              // Padding(padding: EdgeInsets.all(10)),
              // Container(
              //   padding: EdgeInsetsDirectional.only(start: 10),
              //   height: MediaQuery.of(context).size.height * 0.05,
              //   decoration: BoxDecoration(
              //       border: Border.all(color: Colors.grey[300]!, width: 1),
              //       color: Constants.mainColorWhite,
              //       borderRadius: BorderRadius.circular(10)),
              //   child: Row(
              //     children: [
              //       Padding(padding: EdgeInsets.all(10)),
              //       CircleAvatar(
              //         radius: 16,
              //         backgroundColor: Constants.redcolor,
              //         child: Image.asset('assets/facebook1.jpg'),
              //       ),
              //       Padding(padding: EdgeInsets.only(left: 105)),
              //       GestureDetector(
              //         child: Text('Sigin in with Facebook',
              //             style: TextStyle(
              //                 color: Constants.blackcolor,
              //                 fontSize: 15,
              //                 fontWeight: FontWeight.w500)),
              //         onTap: () {
              //           print('Welcome');
              //         },
              // ),
              // ],
              // ),
              // ),
            ])),
      ),
    );
  }
}
