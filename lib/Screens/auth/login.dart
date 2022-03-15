import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/Constants/constants.dart';
import 'package:medical_app/Screens/auth/signup.dart';
import 'package:medical_app/Screens/home.dart';

class Login extends StatelessWidget {
  @override
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.mainColorWhite,
        appBar: AppBar(
          title: Center(child: Text('Medical App')),
        ),
        body: Container(
            margin: EdgeInsets.all(20),
            child: ListView(children: [
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    //  shadowColor: Color.fromARGB(255, 97, 66, 0),
                    child: Image.asset(
                      'assets/login.jpg',
                      fit: BoxFit.scaleDown,
                    ),
                    elevation: 8,
                  )),
              Divider(
                height: MediaQuery.of(context).size.height * 0,
                thickness: 1,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Login Form ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      labelText: 'UserName',
                      labelStyle: TextStyle(fontSize: 10)),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 12)),
                ),
              ),
              TextButton(onPressed: () {}, child: Text('Forgot Password')),
              Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Container(
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: 'Does not have account? ',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w200),
                        children: <TextSpan>[
                          new TextSpan(
                            text: 'Sign in',
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
            //    Container(
            //   margin: EdgeInsets.all(25.0),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //      ElevatedButton(
            //       onPressed: () {},
            //       style: ElevatedButton.styleFrom(shape: StadiumBorder()),
            //       child: Text("Google",style: TextStyle(fontSize: 15,
            //         ),
            //       ),
            //     ),
                
                 
            //     ],
            //   ),
            // )
              Container(
                margin: EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Google"),
                    ),
                    Spacer(),
                    ElevatedButton(onPressed: () {}, child: Text("Facebook")),
                    Spacer(),
                    ElevatedButton(onPressed: () {}, child: Text("Gmail"))
                  ],
                ),
              )

            ])));
  
  }
}
