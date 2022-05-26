import 'dart:html';
import 'dart:ui';

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
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.mainColorWhite,
        body: ListView(children: [
          Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05),
              child: Image.asset(
                'assets/login_logo.jpg',
                width: MediaQuery.of(context).size.width * 0.20,
              )),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Welcome back! ',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.height * 0.001,
            ),
            padding: EdgeInsets.all(20),
            child: TextField(
              cursorColor: Constants.blackcolor,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Email",
                  suffixIcon: Icon(Icons.task_alt_outlined)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.height * 0.001,
            ),
            padding: EdgeInsets.all(20),
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
                        setState(
                            () => this._showPassword = !this._showPassword);
                      }),
                )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Checkbox(
                  value: this.value,
                  onChanged: (bool) {
                    setState(() {
                      this.value = !value;
                    });
                  }),
              Text("I agree to "),
              GestureDetector(
                  onTap: () {},
                  child: Text(" Privacy Policy",
                      style: TextStyle(color: Constants.cyan))),
              Text(" And "),
              GestureDetector(
                onTap: () {},
                child: Text(" Term & condition.",
                    style: TextStyle(color: Constants.cyan)),
              )
            ]),
          ),
          Container(
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.height * 0.03,
              right: MediaQuery.of(context).size.height * 0.01,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  primary: Constants.cyan,
                  minimumSize: Size(
                      20,
                      MediaQuery.of(context).size.height *
                          0.06) // put the width and height you want
                  ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Text(
                "Log In",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
              child: Column(
            children: [
              GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Constants.cyan),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                "Login with social account",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold),
              )
            ],
          )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    padding: EdgeInsetsDirectional.only(start: 05),
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 20, 109, 182),
                        borderRadius: BorderRadius.circular(08)),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          child: ClipOval(
                            child: Image.asset('assets/facebook1.jpg'),
                          ),
                        ),
                        Text(
                          "Facebook",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(10)),
                    //     primary: Constants.bluecolor,
                    //     minimumSize: Size(
                    //         MediaQuery.of(context).size.height * 0.07,
                    //         MediaQuery.of(context).size.height * 0.07),
                    //   ),
                    //   onPressed: () {},
                    //   child: Row(
                    //     children: [
                    //       CircleAvatar(
                    //         radius: MediaQuery.of(context).size.width * 0.045,
                    //         // backgroundColor: Constants.redcolor,
                    //         child: Image.asset('assets/facebook.png'),
                    //       ),
                    //       Text("Facebook")
                    //     ],
                    //   ),
                    // ),
                    ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      primary: Constants.cyan,
                      minimumSize: Size(
                          MediaQuery.of(context).size.height * 0.07,
                          MediaQuery.of(context).size.height * 0.07),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: ClipOval(
                            child: Image.asset('assets/twitter.jpg'),
                          ),
                        ),
                        Text("Twitter")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account ?"),
                GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Sign up",
                      style: TextStyle(color: Constants.cyan),
                    ))
              ],
            ),
          )
        ])

        //     Container(
        //         alignment: Alignment.topRight,
        //         child: TextButton(
        //             onPressed: () {
        //               Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                       builder: (context) => ForgetPassword()));
        //             },
        //             child: Text(
        //               'Forgot your Credentials?',
        //               style: TextStyle(color: Constants.mainColor),
        //             ))),
        //     Container(
        //       child: ElevatedButton(
        //         style: ElevatedButton.styleFrom(
        //             primary: Constants.mainColor,
        //             minimumSize: Size(
        //                 20,
        //                 MediaQuery.of(context).size.height *
        //                     0.06) // put the width and height you want
        //             ),
        //         onPressed: () {
        //           Navigator.push(
        //               context, MaterialPageRoute(builder: (context) => Home()));
        //         },
        //         child: Text(
        //           "Sign in",
        //           style: TextStyle(
        //             fontSize: MediaQuery.of(context).size.width * 0.05,
        //           ),
        //         ),
        //       ),
        //     ),
        //     Container(
        //       padding: EdgeInsets.only(
        //           top: MediaQuery.of(context).size.height * 0.014),
        //       child: RichText(
        //           textAlign: TextAlign.center,
        //           text: TextSpan(
        //               text: 'Does not have account? ',
        //               style: TextStyle(color: Constants.mainColor),
        //               children: <TextSpan>[
        //                 new TextSpan(
        //                   text: 'Sign in',
        //                   style: TextStyle(fontWeight: FontWeight.bold),
        //                   recognizer: new TapGestureRecognizer()
        //                     ..onTap = () {
        //                       Navigator.push(
        //                           context,
        //                           MaterialPageRoute(
        //                               builder: (context) => Signup()));
        //                     },
        //                 ),
        //               ])),
        //     ),
        //     // ElevatedButton.icon(
        //     //   icon: CircleAvatar(
        //     //       backgroundImage: AssetImage(
        //     //     'assets/google.jpg',
        //     //   )),
        //     //   onPressed: () {},
        //     //   label: Text('Button Text',
        //     //       style: TextStyle(
        //     //         color: Colors.black,
        //     //         fontWeight: FontWeight.bold,
        //     //       )),
        //     // ),

        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Expanded(
        //             child: Container(
        //           padding: EdgeInsets.only(
        //             right: MediaQuery.of(context).size.height * 0.060,
        //           ),
        //           child: Divider(
        //             height: MediaQuery.of(context).size.height * 0.080,
        //           ),
        //         )),
        //         Text(
        //           "OR",
        //           style: TextStyle(fontWeight: FontWeight.bold),
        //         ),
        //         Expanded(
        //             child: Container(
        //           padding: EdgeInsets.only(
        //               left: MediaQuery.of(context).size.height * 0.060),
        //           child: Divider(
        //             height: MediaQuery.of(context).size.height * 0.090,
        //           ),
        //         ))
        //       ],
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         InkWell(
        //           onTap: () {
        //             print("Welcome Goolge");
        //           },
        //           child: Container(
        //             child: CircleAvatar(
        //               radius: MediaQuery.of(context).size.width * 0.045,
        //               backgroundColor: Constants.redcolor,
        //               child: Image.asset('assets/google.jpg'),
        //             ),
        //           ),
        //         ),
        //         InkWell(
        //           onTap: () {
        //             print("Welocome facebook");
        //           },
        //           child: Container(
        //             padding: EdgeInsets.only(
        //                 left: MediaQuery.of(context).size.height * 0.09),
        //             child: CircleAvatar(
        //               backgroundColor: Constants.redcolor,
        //               radius: MediaQuery.of(context).size.width * 0.045,
        //               child: Image.asset('assets/facebook1.jpg'),
        //             ),
        //           ),
        //         )
        //       ],
        //     ),

        //     // InkWell(
        //     //   onTap: () {},
        //     //   child: Container(
        //     //     // margin:
        //     //     //     EdgeInsets.only(top: MediaQuery.of(context).size.height) *
        //     //     //         0.01,
        //     //     // decoration: BoxDecoration(
        //     //     //     border: Border.all(color: Colors.grey[300]!),
        //     //     //     color: Constants.mainColorWhite,
        //     //     //     borderRadius: BorderRadius.circular(25)),
        //     //     child: ListTile(
        //     //       leading: CircleAvatar(
        //     //         radius: 25,
        //     //         backgroundColor: Constants.redcolor,
        //     //         child: Image.asset('assets/google.jpg'),
        //     //       ),
        //     //       // title: Center(child: Text("Sigin in with Google")),
        //     //     ),
        //     //   ),
        //     // ),

        //     // InkWell(
        //     //   onTap: () {},
        //     //   child:
        //     //    Container(
        //     //     margin:EdgeInsets.only(top: MediaQuery.of(context).size.height) *0.01,
        //     //     decoration: BoxDecoration(
        //     //         border: Border.all(color: Colors.grey[300]!),
        //     //         color: Constants.mainColorWhite,
        //     //         borderRadius: BorderRadius.circular(30)),
        //     //     child: ListTile(
        //     //       leading: CircleAvatar(
        //     //         radius: 16,
        //     //         backgroundColor: Constants.redcolor,
        //     //         child: Image.asset('assets/facebook1.jpg'),
        //     //       ),
        //     //       title: Center(child: Text("Sigin in with Facebook")),
        //     //     ),
        //     //   ),
        //     // ),

        //     // Container(
        //     //   padding: EdgeInsets.all(10),
        //     //   decoration: BoxDecoration(
        //     //       border: Border.all(color: Colors.grey[300]!, width: 1),
        //     //       color: Constants.mainColorWhite,
        //     //       borderRadius: BorderRadius.circular(10)),
        //     //   child: Row(
        //     //     children: [
        //     //       Padding(padding: EdgeInsets.all(10)),
        //     //       CircleAvatar(
        //     //         radius: 16,
        //     //         backgroundColor: Constants.redcolor,
        //     //         child: Image.asset('assets/google.jpg'),
        //     //       ),
        //     //       Padding(padding: EdgeInsets.only(left: 105)),
        //     //       GestureDetector(
        //     //         child: Text('Sigin in with Google',
        //     //             style: TextStyle(
        //     //                 color: Constants.blackcolor,
        //     //                 fontSize: 15,
        //     //                 fontWeight: FontWeight.w500)),
        //     //         onTap: () {
        //     //           print('Welcome');
        //     //         },
        //     //       ),
        //     //     ],
        //     //   ),
        //     // ),
        //     // Padding(padding: EdgeInsets.all(10)),
        //     // Container(
        //     //   padding: EdgeInsetsDirectional.only(start: 10),
        //     //   height: MediaQuery.of(context).size.height * 0.05,
        //     //   decoration: BoxDecoration(
        //     //       border: Border.all(color: Colors.grey[300]!, width: 1),
        //     //       color: Constants.mainColorWhite,
        //     //       borderRadius: BorderRadius.circular(10)),
        //     //   child: Row(
        //     //     children: [
        //     //       Padding(padding: EdgeInsets.all(10)),
        //     //       CircleAvatar(
        //     //         radius: 16,
        //     //         backgroundColor: Constants.redcolor,
        //     //         child: Image.asset('assets/facebook1.jpg'),
        //     //       ),
        //     //       Padding(padding: EdgeInsets.only(left: 105)),
        //     //       GestureDetector(
        //     //         child: Text('Sigin in with Facebook',
        //     //             style: TextStyle(
        //     //                 color: Constants.blackcolor,
        //     //                 fontSize: 15,
        //     //                 fontWeight: FontWeight.w500)),
        //     //         onTap: () {
        //     //           print('Welcome');
        //     //         },
        //     // ),
        //     // ],
        //     // ),
        //     // ),
        //   ])),
        );
  }
}
