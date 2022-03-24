import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:medical_app/Constants/constants.dart';
import 'package:medical_app/Screens/auth/forgetpassword.dart';
import 'package:medical_app/Screens/auth/signup.dart';
import 'package:medical_app/Screens/home.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.mainColorWhite,
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
                    'Hi there! ',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.1,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                      cursorColor: Constants.blackcolor,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Email',
                      )),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
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
                              setState(() =>
                                  this._showPassword = !this._showPassword);
                            }),
                      )),
                ),
                Container(
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgetPassword()));
                        },
                        child: Text(
                          'Forgot your Credentials?',
                          style: TextStyle(color: Constants.mainColor),
                        ))),
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
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Text(
                      "Sign in",
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
                          text: 'Does not have account? ',
                          style: TextStyle(color: Constants.mainColor),
                          children: <TextSpan>[
                            new TextSpan(
                              text: 'Sign in',
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.height * 0.060,
                      ),
                      child: Divider(
                        height: MediaQuery.of(context).size.height * 0.080,
                      ),
                    )),
                    Text(
                      "OR",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.060),
                      child: Divider(
                        height: MediaQuery.of(context).size.height * 0.090,
                      ),
                    ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        print("Welocome Goolge");
                      },
                      child: Container(
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.045,
                          backgroundColor: Constants.redcolor,
                          child: Image.asset('assets/google.jpg'),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("Welocome facebook");
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.height * 0.09),
                        child: CircleAvatar(
                          backgroundColor: Constants.redcolor,
                          radius: MediaQuery.of(context).size.width * 0.045,
                          child: Image.asset('assets/facebook1.jpg'),
                        ),
                      ),
                    )
                  ],
                ),

                // InkWell(
                //   onTap: () {},
                //   child: Container(
                //     // margin:
                //     //     EdgeInsets.only(top: MediaQuery.of(context).size.height) *
                //     //         0.01,
                //     // decoration: BoxDecoration(
                //     //     border: Border.all(color: Colors.grey[300]!),
                //     //     color: Constants.mainColorWhite,
                //     //     borderRadius: BorderRadius.circular(25)),
                //     child: ListTile(
                //       leading: CircleAvatar(
                //         radius: 25,
                //         backgroundColor: Constants.redcolor,
                //         child: Image.asset('assets/google.jpg'),
                //       ),
                //       // title: Center(child: Text("Sigin in with Google")),
                //     ),
                //   ),
                // ),

                // InkWell(
                //   onTap: () {},
                //   child:
                //    Container(
                //     margin:EdgeInsets.only(top: MediaQuery.of(context).size.height) *0.01,
                //     decoration: BoxDecoration(
                //         border: Border.all(color: Colors.grey[300]!),
                //         color: Constants.mainColorWhite,
                //         borderRadius: BorderRadius.circular(30)),
                //     child: ListTile(
                //       leading: CircleAvatar(
                //         radius: 16,
                //         backgroundColor: Constants.redcolor,
                //         child: Image.asset('assets/facebook1.jpg'),
                //       ),
                //       title: Center(child: Text("Sigin in with Facebook")),
                //     ),
                //   ),
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
        ));
  }
}
