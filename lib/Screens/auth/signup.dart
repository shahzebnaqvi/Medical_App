import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:medical_app/Screens/auth/login.dart';

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
          backgroundColor: Constants.mainColorWhite,
          title: Text(
            "Create Account",
            style: TextStyle(color: Constants.blackcolor),
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
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/doctor2.jpg',
                  width: MediaQuery.of(context).size.width * 0.42,
                )),
            Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
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
                  borderRadius: BorderRadius.circular(23),
                  boxShadow: [
                    BoxShadow(
                      color:
                          Color.fromARGB(255, 207, 205, 205).withOpacity(0.2),
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
                      prefixIcon: Icon(Icons.person_outline),
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
                      prefixIcon: Icon(Icons.person_outline),
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
                        prefixIcon: Icon(Icons.mark_email_unread_outlined)),
                  ),
                  TextField(
                    obscureText: !this._showPassword,
                    cursorColor: Constants.blackcolor,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 216, 216, 216))),
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
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
                  Container(
                    height: MediaQuery.of(context).size.width * 0.13,
                    width: MediaQuery.of(context).size.width * 0.50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          primary: Constants.mainColor,
                          minimumSize: Size(
                              20, MediaQuery.of(context).size.height * 0.06)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Center(
                          child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 15),
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
                        Text("Already have an account?"),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(color: Constants.bluecolor),
                            ))
                      ],
                    ),
                  )
                ]))
          ],
        ));
  }
}



// import 'dart:ui';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:get/route_manager.dart';
// import 'package:medical_app/Constants/constants.dart';
// import 'package:medical_app/Screens/additionaltools/bmi.dart';
// import 'package:medical_app/Screens/auth/login.dart';
// import 'package:medical_app/Screens/home.dart';

// class Signup extends StatefulWidget {
//   const Signup({Key? key}) : super(key: key);

//   @override
//   State<Signup> createState() => _SignupState();
// }

// class _SignupState extends State<Signup> {
//   TextEditingController username = TextEditingController();
//   TextEditingController email = TextEditingController();
//   TextEditingController password = TextEditingController();
//   String _dropDownValue = "";
//   bool _showPassword = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Constants.mainColorWhite,
//         appBar: AppBar(
//           title: Text(
//             "Create Account",
//             style: TextStyle(color: Constants.blackcolor),
//           ),
//           leading: IconButton(
//               color: Colors.white,
//               icon: Icon(
//                 Icons.arrow_back,
//                 color: Colors.black,
//                 size: 20,
//               ),
//               onPressed: () {
//                 Navigator.pop(context);
//               }),
//         ),
//         body: ListView(
//           children: [
//             Container(
//                 padding: EdgeInsets.only(
//                   top: MediaQuery.of(context).size.height * 0.02,
//                 ),
//                 alignment: Alignment.center,
//                 child: Image.asset(
//                   'assets/doctor2.jpg',
//                   width: MediaQuery.of(context).size.width * 0.38,
//                 )),
//             Container(
//                 width: MediaQuery.of(context).size.width * 0.9,
//                 margin: EdgeInsets.only(
//                   top: MediaQuery.of(context).size.height * 0.05,
//                   bottom: MediaQuery.of(context).size.height * 0.01,
//                   left: MediaQuery.of(context).size.height * 0.01,
//                   right: MediaQuery.of(context).size.height * 0.01,
//                 ),
//                 padding: EdgeInsets.only(
//                   top: MediaQuery.of(context).size.height * 0.05,
//                   bottom: MediaQuery.of(context).size.height * 0.10,
//                 ),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(25),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.2),
//                       spreadRadius: 5,
//                       blurRadius: 7,
//                       offset: Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 child: Column(children: [
//                   TextField(
//                     cursorColor: Constants.blackcolor,
//                     decoration: InputDecoration(
//                       enabledBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(
//                               color: Color.fromARGB(255, 216, 216, 216))),
//                       labelText: "First Name",
//                       prefixIcon: Icon(Icons.person_outline),
//                       // suffixIcon: Icon(Icons.remove_red_eye),
//                     ),
//                   ),
//                   TextField(
//                     cursorColor: Constants.blackcolor,
//                     decoration: InputDecoration(
//                       enabledBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(
//                               color: Color.fromARGB(255, 216, 216, 216))),
//                       labelText: "Last Name",
//                       prefixIcon: Icon(Icons.person_outline),
//                       //  suffixIcon: Icon(Icons.remove_red_eye),
//                     ),
//                   ),
//                   TextField(
//                     cursorColor: Constants.blackcolor,
//                     decoration: InputDecoration(
//                         enabledBorder: UnderlineInputBorder(
//                             borderSide: BorderSide(
//                                 color: Color.fromARGB(255, 216, 216, 216))),
//                         labelText: "Email",
//                         //suffixIcon: Icon(Icons.remove_red_eye),
//                         prefixIcon: Icon(Icons.mark_email_unread_outlined)),
//                   ),
//                   TextField(
//                     obscureText: !this._showPassword,
//                     cursorColor: Constants.blackcolor,
//                     decoration: InputDecoration(
//                       enabledBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(
//                               color: Color.fromARGB(255, 216, 216, 216))),
//                       labelText: "Password",
//                       prefixIcon: Icon(Icons.lock),
//                       suffixIcon: IconButton(
//                           icon: Icon(
//                             Icons.remove_red_eye,
//                             color: this._showPassword
//                                 ? Constants.bluecolor
//                                 : Constants.mediumColor,
//                           ),
//                           onPressed: () {
//                             setState(
//                                 () => this._showPassword = !this._showPassword);
//                           }),
//                     ),
//                   ),
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height * 0.05,
//                   ),
//                   Container(
//                     padding: EdgeInsets.all(05),
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                           primary: Constants.bluecolor,
//                           minimumSize: Size(
//                               20, MediaQuery.of(context).size.height * 0.06)),
//                       onPressed: () {
//                         Navigator.push(context,
//                             MaterialPageRoute(builder: (context) => Home()));
//                       },
//                       child: Text("Sign up"),
//                     ),
//                   ),
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height * 0.02,
//                   ),
//                   Container(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text("Already have an account?"),
//                         GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => Login()));
//                             },
//                             child: Text(
//                               "Login",
//                               style: TextStyle(color: Constants.bluecolor),
//                             ))
//                       ],
//                     ),
//                   )
//                 ]))
//           ],
//         )

//         //   SizedBox(
//         //     height: MediaQuery.of(context).size.height * 0.05,
//         //   ),
//         //   Container(
//         //     margin: EdgeInsets.only(
//         //       left: MediaQuery.of(context).size.height * 0.12,
//         //       right: MediaQuery.of(context).size.height * 0.12,
//         //     ),
//         //     child: ElevatedButton(
//         //       style: ElevatedButton.styleFrom(
//         //           shape: RoundedRectangleBorder(
//         //               borderRadius: BorderRadius.circular(20)),
//         //           primary: Constants.bluecolor,
//         //           minimumSize:
//         //               Size(20, MediaQuery.of(context).size.height * 0.06)),
//         //       onPressed: () {},
//         //       child: Text("Sign up"),
//         //     ),
//         //   ),
//         //   SizedBox(
//         //     height: MediaQuery.of(context).size.height * 0.02,
//         //   ),
//         //   Container(
//         //     child: Row(
//         //       mainAxisAlignment: MainAxisAlignment.center,
//         //       children: [
//         //         Text("Already have an account?"),
//         //         GestureDetector(
//         //             onTap: () {
//         //               Navigator.push(context,
//         //                   MaterialPageRoute(builder: (context) => Login()));
//         //             },
//         //             child: Text(
//         //               "Login",
//         //               style: TextStyle(color: Constants.bluecolor),
//         //             ))
//         //       ],
//         //     ),
//         //   )
//         // ])

//         //         Container(
//         //           alignment: Alignment.bottomLeft,
//         //           child: Text(
//         //             'Get Started',
//         //             style: TextStyle(
//         //                 fontSize: MediaQuery.of(context).size.width * 0.1,
//         //                 fontWeight: FontWeight.bold),
//         //           ),
//         //         ),
//         //         Container(
//         //           padding: EdgeInsets.all(10),
//         //           child: TextField(
//         //               controller: username,
//         //               cursorColor: Constants.blackcolor,
//         //               decoration: InputDecoration(
//         //                 border: InputBorder.none,
//         //                 labelText: 'UserName',
//         //               )),
//         //         ),
//         //         Container(
//         //           padding: EdgeInsets.all(10),
//         //           child: TextField(
//         //               controller: email,
//         //               cursorColor: Constants.blackcolor,
//         //               decoration: InputDecoration(
//         //                 border: InputBorder.none,
//         //                 labelText: 'Email',
//         //               )),
//         //         ),
//         //         Container(
//         //           padding: EdgeInsets.all(10),
//         //           child: TextField(
//         //               controller: password,
//         //               cursorColor: Constants.blackcolor,
//         //               obscureText: !this._showPassword,
//         //               decoration: InputDecoration(
//         //                 border: InputBorder.none,
//         //                 labelText: 'Password',
//         //                 suffixIcon: IconButton(
//         //                     icon: Icon(
//         //                       Icons.remove_red_eye,
//         //                       color: this._showPassword
//         //                           ? Constants.bluecolor
//         //                           : Constants.mediumColor,
//         //                     ),
//         //                     onPressed: () {
//         //                       setState(
//         //                           () => this._showPassword = !this._showPassword);
//         //                     }),
//         //               )),
//         //         ),
//         //         Container(
//         //           alignment: Alignment.topRight,
//         //           width: MediaQuery.of(context).size.width * 0.3,
//         //           child: DropdownButton<String>(
//         //             hint: _dropDownValue == ""
//         //                 ? Text('Gender')
//         //                 : Text(
//         //                     _dropDownValue,
//         //                     style: TextStyle(color: Constants.mainColor),
//         //                   ), // Not necessary for Option 1

//         //             items: <String>['Male', 'Female'].map((String value) {
//         //               return DropdownMenuItem<String>(
//         //                 value: value,
//         //                 child: Text(value),
//         //               );
//         //             }).toList(),
//         //             onChanged: (value) {
//         //               setState(() {
//         //                 _dropDownValue = value!;
//         //               });
//         //             },
//         //           ),
//         //         ),
//         //         Container(
//         //           child: ElevatedButton(
//         //             style: ElevatedButton.styleFrom(
//         //                 primary: Constants.mainColor,
//         //                 minimumSize: Size(
//         //                     20,
//         //                     MediaQuery.of(context).size.height *
//         //                         0.06) // put the width and height you want
//         //                 ),
//         //             onPressed: () {
//         //               Navigator.push(context,
//         //                   MaterialPageRoute(builder: (context) => Login()));
//         //             },
//         //             child: Text(
//         //               "Create Account",
//         //               style: TextStyle(
//         //                 fontSize: MediaQuery.of(context).size.width * 0.05,
//         //               ),
//         //             ),
//         //           ),
//         //         ),
//         //         Container(
//         //           padding: EdgeInsets.only(
//         //               top: MediaQuery.of(context).size.height * 0.014),
//         //           child: RichText(
//         //               textAlign: TextAlign.center,
//         //               text: TextSpan(
//         //                   text: 'Already have account? ',
//         //                   style: TextStyle(color: Constants.mainColor),
//         //                   children: <TextSpan>[
//         //                     new TextSpan(
//         //                       text: 'Sign up',
//         //                       style: TextStyle(fontWeight: FontWeight.bold),
//         //                       recognizer: new TapGestureRecognizer()
//         //                         ..onTap = () {
//         //                           Navigator.push(
//         //                               context,
//         //                               MaterialPageRoute(
//         //                                   builder: (context) => Signup()));
//         //                         },
//         //                     ),
//         //                   ])),
//         //         ),
//         //       ])),
//         // ),
//         );
//   }
// }

















//               // ElevatedButton.icon(
//               //   icon: CircleAvatar(
//               //       backgroundImage: AssetImage(
//               //     'assets/google.jpg',
//               //   )),
//               //   onPressed: () {},
//               //   label: Text('Button Text',
//               //       style: TextStyle(
//               //         color: Colors.black,
//               //         fontWeight: FontWeight.bold,
//               //       )),
//               // ),

//               // Container(
//               //   padding: EdgeInsets.all(10),
//               //   decoration: BoxDecoration(
//               //       border: Border.all(color: Colors.grey[300]!, width: 1),
//               //       color: Constants.mainColorWhite,
//               //       borderRadius: BorderRadius.circular(10)),
//               //   child: Row(
//               //     children: [
//               //       Padding(padding: EdgeInsets.all(10)),
//               //       CircleAvatar(
//               //         radius: 16,
//               //         backgroundColor: Constants.redcolor,
//               //         child: Image.asset('assets/google.jpg'),
//               //       ),
//               //       Padding(padding: EdgeInsets.only(left: 105)),
//               //       GestureDetector(
//               //         child: Text('Sigin in with Google',
//               //             style: TextStyle(
//               //                 color: Constants.blackcolor,
//               //                 fontSize: 15,
//               //                 fontWeight: FontWeight.w500)),
//               //         onTap: () {
//               //           print('Welcome');
//               //         },
//               //       ),
//               //     ],
//               //   ),
//               // ),
//               // Padding(padding: EdgeInsets.all(10)),
//               // Container(
//               //   padding: EdgeInsetsDirectional.only(start: 10),
//               //   height: MediaQuery.of(context).size.height * 0.05,
//               //   decoration: BoxDecoration(
//               //       border: Border.all(color: Colors.grey[300]!, width: 1),
//               //       color: Constants.mainColorWhite,
//               //       borderRadius: BorderRadius.circular(10)),
//               //   child: Row(
//               //     children: [
//               //       Padding(padding: EdgeInsets.all(10)),
//               //       CircleAvatar(
//               //         radius: 16,
//               //         backgroundColor: Constants.redcolor,
//               //         child: Image.asset('assets/facebook1.jpg'),
//               //       ),
//               //       Padding(padding: EdgeInsets.only(left: 105)),
//               //       GestureDetector(
//               //         child: Text('Sigin in with Facebook',
//               //             style: TextStyle(
//               //                 color: Constants.blackcolor,
//               //                 fontSize: 15,
//               //                 fontWeight: FontWeight.w500)),
//               //         onTap: () {
//               //           print('Welcome');
//               //         },
//               // ),
//               // ],
//               // ),
//               // ),
   