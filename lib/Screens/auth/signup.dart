import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/Constants/constants.dart';
class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
       margin: EdgeInsets.all(10),
        child: ListView(
            children: [
                Container(
                  padding: EdgeInsets.all(10),
                  // margin: EdgeInsets.all(10),
                child: Text("Sign Up",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,decorationColor: Constants.ligtbluecolor)),
                ),
                Divider(
                height: MediaQuery.of(context).size.height * 0,
                thickness: 1,
                ), 
                Container(  
                 padding: EdgeInsets.all(10),
                 child: TextField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                     labelText: 'Username'
                   ),
                 ),
                ),
                  Container(
                 padding: EdgeInsets.all(10),
                 child: TextField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                     labelText: 'Email'
                   ),
                 ),
                ), 
                  Container(
                 padding: EdgeInsets.all(10),
                 child: TextField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                     labelText: 'Password '
                   ),
                 ),
                ),
            ],
          )
          
        ), 
      
    );
  }
}
  // Text("Sign Up",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,decorationColor: Constants.ligtbluecolor))