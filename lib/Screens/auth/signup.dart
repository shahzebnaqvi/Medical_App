import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:medical_app/Screens/auth/login.dart';
import 'package:medical_app/Screens/auth/myprofile.dart';

import '../../Constants/constants.dart';

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
        backgroundColor: Constants.mainColorWhite,
        appBar: AppBar(
          backgroundColor: Constants.mainColor1,
          title: Text(
            "Create Account",
            style: TextStyle(color: Constants.mainColorWhite),
          ),
          leading: IconButton(
              color: Colors.white,
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 20,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: ListView(
          children: [
            Container(
              height: 120.0,
              decoration: new BoxDecoration(
                color: Constants.mainColor1,
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 100.0)),
                boxShadow: [
                  BoxShadow(
                    color: Constants.bluecolor.withOpacity(0.4),
                    // color: Color.fromARGB(255, 207, 205, 205).withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      letterSpacing: 2,
                      color: Constants.mainColorWhite,
                      fontWeight: FontWeight.w500,
                      fontSize: 28),
                ),
              ),
            ),
            // Container(
            //   padding: EdgeInsets.only(
            //       top: MediaQuery.of(context).size.height * 0.01,
            //       left: MediaQuery.of(context).size.height * 0.03),
            //   child: Text(
            //     "Sign Up",
            //     style: TextStyle(
            //         fontSize: 22,
            //         letterSpacing: 1,
            //         color: Constants.ubl,
            //         fontWeight: FontWeight.bold),
            //   ),
            // ),
            Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.08,
                  //bottom: MediaQuery.of(context).size.height * 0.002,
                  // left: MediaQuery.of(context).size.height * 0.001,
                  // right: MediaQuery.of(context).size.height * 0.001,
                ),
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.04,
                  bottom: MediaQuery.of(context).size.height * 0.12,
                  left: MediaQuery.of(context).size.height * 0.02,
                  right: MediaQuery.of(context).size.height * 0.02,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Constants.bluecolor.withOpacity(0.4),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(children: [
                  TextField(
                    cursorColor: Constants.blackcolor,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 216, 216, 216))),
                      labelText: "First Name",
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: Constants.mediumColor,
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye,
                          color: Constants.mediumColor),
                    ),
                  ),
                  TextField(
                    cursorColor: Constants.blackcolor,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 216, 216, 216))),
                      labelText: "Last Name",
                      prefixIcon: Icon(Icons.person_outline,
                          color: Constants.mediumColor),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Constants.mediumColor,
                      ),
                    ),
                  ),
                  TextField(
                    cursorColor: Constants.blackcolor,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 216, 216, 216))),
                        labelText: "Email",
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Constants.mediumColor,
                        ),
                        prefixIcon: Icon(Icons.mark_email_unread_outlined,
                            color: Constants.mediumColor)),
                  ),
                  TextField(
                    obscureText: !this._showPassword,
                    cursorColor: Constants.blackcolor,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 216, 216, 216))),
                      labelText: "Password",
                      prefixIcon:
                          Icon(Icons.lock, color: Constants.mediumColor),
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
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.01,
                        bottom: MediaQuery.of(context).size.height * 0.01,
                        left: MediaQuery.of(context).size.height * 0.001,
                        right: MediaQuery.of(context).size.height * 0.001,
                      ),
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.001,
                        bottom: MediaQuery.of(context).size.height * 0.001,
                        left: MediaQuery.of(context).size.height * 0.10,
                        right: MediaQuery.of(context).size.height * 0.10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Constants.mainColor1,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.2),
                            spreadRadius: 0.4,
                            blurRadius: 2,
                            offset: Offset(0, 6), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                          child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1,
                            color: Constants.mainColorWhite,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(letterSpacing: 1),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Profile()));
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                  color: Constants.mainColor1),
                            ))
                      ],
                    ),
                  )
                ]))
          ],
        ));
  }
}
