import 'dart:html';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

import '../../Constants/constants.dart';

class AddPillReminder extends StatefulWidget {
  const AddPillReminder({Key? key}) : super(key: key);

  @override
  State<AddPillReminder> createState() => _AddPillReminderState();
}

class _AddPillReminderState extends State<AddPillReminder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.mainColorWhite,
        appBar: AppBar(
            backgroundColor: Constants.mainColor1,
            title: Text(
              "Add Pill Remainder",
              style: TextStyle(color: Constants.mainColorWhite),
            )),
        body: ListView(children: [
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.001,
              bottom: MediaQuery.of(context).size.height * 0.02,
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
              borderRadius: BorderRadius.circular(05),
              color: Constants.mainColorWhite,
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.2),
                  spreadRadius: 0.1,
                  blurRadius: 2,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.04,
                    right: MediaQuery.of(context).size.width * 0.25,
                    left: MediaQuery.of(context).size.width * 0.02,
                  ),
                  decoration: BoxDecoration(
                    color: Constants.lightColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        MediaQuery.of(context).size.width * 0.04)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextField(
                    autofocus: false,
                    style: TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                    decoration: InputDecoration(
                      filled: true,
                      suffixIcon: Icon(Icons.search),
                      fillColor: Colors.white,
                      hintText: 'Search Medicine',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 12.0, top: 12.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(29),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.access_alarm_rounded),
                    Text(
                      "More..",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
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
              borderRadius: BorderRadius.circular(07),
              color: Constants.bannercolor,
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.2),
                  spreadRadius: 0.1,
                  blurRadius: 2,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Center(
                child: Text(
              "+ Add Another Pill",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.30,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
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
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Constants.bluecolor, width: 05),
              color: Constants.mainColorWhite,
              // // boxShadow: [
              // //   BoxShadow(
              // //     // color: Colors.blue.withOpacity(0.2),
              // //     spreadRadius: 0.1,
              // //     blurRadius: 2,
              // //     offset: Offset(0, 3), // changes position of shadow
              // //   ),
              // ],
            ),
            child: Center(
                child: Text(
              "Back To  Pill Reminder",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Constants.blackcolor),
            )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
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
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Constants.bluecolor, width: 05),
              color: Constants.mainColorWhite,
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.blue.withOpacity(0.2),
              //     spreadRadius: 0.1,
              //     blurRadius: 2,
              //     offset: Offset(0, 3), // changes position of shadow
              //   ),
              // ],
            ),
            child: Center(
                child: Text(
              "Back To Home ",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Constants.blackcolor),
            )),
          )
        ]));
  }
}
