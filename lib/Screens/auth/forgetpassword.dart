import 'package:flutter/material.dart';
import 'package:medical_app/Constants/constants.dart';
import 'package:medical_app/Screens/auth/resetanimation.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.mainColorWhite,
      appBar: AppBar(
        backgroundColor: Constants.mainColorWhite,
        title: Text(
          "",
          style: TextStyle(letterSpacing: 1, color: Constants.blackcolor),
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
      body: Center(
        child: Container(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.08),
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height * 0.02),
                alignment: Alignment.bottomLeft,
                child: Center(
                  child: Text(
                    "Reset Password",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: MediaQuery.of(context).size.width * 0.1,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              // Container(
              //     padding: EdgeInsets.only(
              //       top: MediaQuery.of(context).size.height * 0.05,
              //     ),
              //     alignment: Alignment.center,
              //     child: Image.asset(
              //       'assets/forgot.jpg',
              //       width: MediaQuery.of(context).size.width * 0.40,
              //     )
              //     ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height * 0.02),
                child: Row(
                  children: [
                    Text(
                      "Confirm your email and we'll send the instructions",
                      style: TextStyle(color: Constants.grey, fontSize: 15),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05)),
              // Container(
              //   padding: EdgeInsets.only(
              //       left: MediaQuery.of(context).size.height * 0.02),
              //   alignment: Alignment.bottomLeft,
              //   child: Text(
              //     "Reset Passsord",
              //     style: TextStyle(
              //         letterSpacing: 1,
              //         fontSize: MediaQuery.of(context).size.width * 0.1,
              //         fontWeight: FontWeight.w500),
              //   ),
              // ),

              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height * 0.02,
                    right: MediaQuery.of(context).size.height * 0.02),
                child: TextField(
                  cursorColor: Constants.blackcolor,
                  decoration: InputDecoration(
                      // border: InputBorder.none,
                      labelText: "Enter Email",
                      suffixIcon: Icon(Icons.task_alt_outlined)),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.4,
              )),

              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResetAnimation()));
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
                    left: MediaQuery.of(context).size.height * 0.02,
                    right: MediaQuery.of(context).size.height * 0.02,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                    "Reset",
                    style: TextStyle(
                        color: Constants.mainColorWhite,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
