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
      body: Center(
        child: Container(
          child: ListView(
            children: [
              Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    //  bottom: MediaQuery.of(context).size.height * 0.09,
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/login.jpg',
                    width: MediaQuery.of(context).size.width * 0.35,
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Reset it",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.1,
                      fontWeight: FontWeight.w500),
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
