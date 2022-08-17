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
          "Forgot  Password",
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
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.07,
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/forgot.jpg',
                    width: MediaQuery.of(context).size.width * 0.40,
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height * 0.02),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Reset it",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: MediaQuery.of(context).size.width * 0.1,
                      fontWeight: FontWeight.w500),
                ),
              ),
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
                top: MediaQuery.of(context).size.height * 0.3,
              )),
              Container(
                height: MediaQuery.of(context).size.height * 0.055,
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.02,
                  right: MediaQuery.of(context).size.height * 0.02,
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      primary: Constants.mainColor1,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResetAnimation()));
                    },
                    child: Text(
                      "Reset",
                      style: TextStyle(
                          letterSpacing: 2,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
