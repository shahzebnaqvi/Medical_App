import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:medical_app/Constants/constants.dart';

class BP extends StatefulWidget {
  const BP({Key? key}) : super(key: key);

  @override
  State<BP> createState() => _BPState();
}

class _BPState extends State<BP> {
  String Systollic="";
  String Diastoolic="";
  String Pulse="";
  @override
  

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blood Pressure"),
        backgroundColor: Constants.mainColor,
      ),
          body: Container(
            padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.height * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Center(
                      child: Text(
                  'Grade 3 hypertension',
                  style: TextStyle(
                        color: Color.fromARGB(255, 150, 31, 23),
                        fontSize: MediaQuery.of(context).size.width * 0.08),
                ),
                    )),
                SizedBox(height: 15),
                Center(
                  child: Text(
                    "Systollic: 181 mmHg",textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.02,fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text("Diastoolic: 99 mmHg",textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02,fontWeight: FontWeight.w500)),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text("Pulse: 82 mmHg",textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02,fontWeight: FontWeight.w500)),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text("Mean: 126.33Hg",textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02,fontWeight: FontWeight.w500)
                          ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.1,
                      top: MediaQuery.of(context).size.width * 0.1),
                  child: TextField(
                    cursorColor: Constants.blackcolor,
                    decoration: InputDecoration(
                      labelText: 'Systolic',
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.1),
                  child: TextField(
                    cursorColor: Constants.blackcolor,
                    decoration: InputDecoration(
                      labelText: 'Diatolic',
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.1),
                  child: TextField(
                    cursorColor: Constants.blackcolor,
                    decoration: InputDecoration(
                      labelText: 'Pulse',
                    ),
                  ),
                ),
                


                Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * 0.1),
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Constants.mainColor,
                        minimumSize: Size(
                            20, MediaQuery.of(context).size.height * 0.06)),
                    onPressed: () {},
                    child: Text(
                      "Check",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
    );
  }
}
