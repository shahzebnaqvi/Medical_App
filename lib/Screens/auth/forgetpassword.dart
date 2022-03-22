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
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.93,
          child: ListView(
            children: [
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
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Reset it",
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
                      labelText: 'Enter Email',
                    )),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Constants.mainColor),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResetAnimation()));
                  },
                  child: Text("Reset"))
            ],
          ),
        ),
      ),
    );
  }
}
