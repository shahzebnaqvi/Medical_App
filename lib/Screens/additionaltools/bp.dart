import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:medical_app/Constants/constants.dart';

class BP extends StatelessWidget {
  const BP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blood Pressure"),
        backgroundColor: Constants.mainColor,
      ),
        body: Card(
          elevation: 5  ,
          color: Color.fromARGB(255, 156, 181, 218),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.blue, width: 8),
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.all(20.0),
          child: Container(
            padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.height * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Text(
                  'Grade 3 hypertension',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: MediaQuery.of(context).size.width * 0.05),
                )),
                SizedBox(height: 15),
                Text(
                  "Systollic : 181 mmHg",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Diastoolic: 99 mmHg",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.02)),
                SizedBox(
                  height: 10,
                ),
                Text("Pulse :82 mmHg",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.02)),
                SizedBox(
                  height: 10,
                ),
                Text("Mean :126.33Hg",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.02)
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
          )),
    );
  }
}
