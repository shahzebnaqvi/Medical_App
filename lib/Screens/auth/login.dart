import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:medical_app/Constants/constants.dart';
import 'package:medical_app/Screens/auth/signup.dart';
import 'package:medical_app/Screens/home.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
        backgroundColor: Constants.mainColorWhite,
        appBar: AppBar(
          title: Center(child: Text('Medical App')),
        ),
        body: Container(
          padding: EdgeInsets.all(50),
            child: ListView(
              children: [
              Container(
                margin: EdgeInsets.all(15),
                  child:CircleAvatar(
                   child:   Image.asset('assets/login.jpg'),   
                   ),
                 
                  ),    
                  Divider(
                  height: MediaQuery.of(context).size.height * 0,
                  thickness: 1,
                ),

                Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(10),
                child: Text(
                'Hi there! ',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),

                Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                cursorColor:Constants.blackcolor,
                decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'UserName',
                )
                ),
              ),

                Container(
                padding: EdgeInsets.all(10),
                child:  TextField(
                cursorColor:Constants.blackcolor,
                obscureText: !this._showPassword,
                decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Password',
                suffixIcon: IconButton(
                icon: Icon(
                Icons.remove_red_eye,
                color:this._showPassword ? Constants.bluecolor :Constants.mediumColor,
                ),
                onPressed: () {
                setState(
                    () => this._showPassword = !this._showPassword);
                }),
                  )
              ),
              ),


                TextButton(
                onPressed: () {}, 
                child: Text('Forgot Password')),
                Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
              
                  child: Text(
                    "Sign in",
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
                  fontSize: 14, fontWeight: FontWeight.w200),
                  children: <TextSpan>[
                  new TextSpan(
                  text: 'Sign in',
                  recognizer: new TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                    context,MaterialPageRoute(builder: (context) => Signup()));
                  },
                  ),
                  ]
                  )
                  ),
                  ),

                 Padding(padding: EdgeInsets.all(10)),
                 Container(
                 padding: EdgeInsetsDirectional.only(start: 10),
                 height: MediaQuery.of(context).size.height*0.05,
                 decoration: BoxDecoration(
                 border: Border.all(color:Colors.grey[300]!, width: 1),
                 color: Constants.mainColorWhite,
                 borderRadius: BorderRadius.circular(10)),
                  child: Row(
                  children: [
                  Padding(padding: EdgeInsets.all(10)),
                  CircleAvatar(
                  radius: 16, 
                  backgroundColor: Constants.redcolor,
                     child:   Image.asset('assets/google.jpg'),   
                    ),
                  Padding(padding: EdgeInsets.only(left: 105)),
                      GestureDetector(
                        child: Text('Sigin in with Google',
                        style: TextStyle(
                            color: Constants.blackcolor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)
                        ),
                        onTap: () {
                        print('Welcome');
                        },
                        
                      ),
                  ],
                     ),
                 ),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                padding: EdgeInsetsDirectional.only(start: 10),
                height: MediaQuery.of(context).size.height*0.05,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]!, width: 1),
                    color: Constants.mainColorWhite,
                    borderRadius: BorderRadius.circular(10)),
                     child: Row(
                     children: [
                    Padding(padding: EdgeInsets.all(10)),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor:Constants.redcolor,
                      child: ImageIcon(
                        AssetImage('assets/facebook.png'),
                        color:Constants.mainColorWhite,
                        size: 16,
                      ),
                    ),
                     Padding(padding: EdgeInsets.only(left: 105)),
                      GestureDetector(
                        child: Text('Sigin in with Facebook',
                        style: TextStyle(
                            color:Constants.blackcolor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)
                        ),
                        onTap: () {
                        print('Welcome');
                        },
                        
                      ),

                      
                   
                  ],
                ),
              ),
            ]
            )
            ),
            
            
            );
  }
}