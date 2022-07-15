import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:medical_app/Screens/Pill_Planner/Pill_Reminder.dart';
import 'package:medical_app/Screens/Timelines/timelines.dart';

import '../../Constants/constants.dart';

class AddPillReminder extends StatefulWidget {
  const AddPillReminder({Key? key}) : super(key: key);

  @override
  State<AddPillReminder> createState() => _AddPillReminderState();
}

class _AddPillReminderState extends State<AddPillReminder> {
  int itemcounter = 0;
  var graphbut = 1;
  var selectedtype = 0;
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
              top: MediaQuery.of(context).size.height * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.001,
              left: MediaQuery.of(context).size.height * 0.01,
              right: MediaQuery.of(context).size.height * 0.01,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(05),
              border: Border.all(color: Constants.blackcolor, width: 02),
              color: Constants.mainColorWhite,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
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
                    top: MediaQuery.of(context).size.width * 0.03,
                    right: MediaQuery.of(context).size.width * 0.02,
                    left: MediaQuery.of(context).size.width * 0.02,
                  ),
                  decoration: BoxDecoration(
                    color: Constants.lightColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        MediaQuery.of(context).size.width * 0.03)),
                    border: Border.all(color: Constants.blackcolor),
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
                    style:
                        TextStyle(fontSize: 15.0, color: Constants.blackcolor),
                    decoration: InputDecoration(
                      filled: false,
                      suffixIcon: Icon(Icons.search),
                      fillColor: Constants.mainColorWhite,
                      hintText: 'Search Medicine',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 12.0, top: 12.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.access_alarm_rounded,
                      size: 40,
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            itemcounter--;
                          });
                        },
                        child: Icon(Icons.remove)),
                    Text(
                      "$itemcounter".toString(),
                      style: TextStyle(fontSize: 30),
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            itemcounter++;
                          });
                        },
                        child: Icon(Icons.add)),
                    Container(
                      margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.height * 0.01),
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.01,
                        top: MediaQuery.of(context).size.height * 0.01,
                        left: MediaQuery.of(context).size.height * 0.01,
                        right: MediaQuery.of(context).size.height * 0.01,
                      ),
                      decoration: BoxDecoration(
                        color: Constants.mainColorWhite,
                        border:
                            Border.all(color: Constants.bluecolor, width: 03),
                        borderRadius: BorderRadius.circular(05),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey.withOpacity(0.2),
                        //     spreadRadius: 3,
                        //     blurRadius: 5,
                        //     offset: Offset(0, 3), // changes position of shadow
                        //   ),
                        // ],
                      ),
                      child: Text(
                        "More...",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Container(
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
                  Text(
                    "Times A Day",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                print(graphbut);
                                graphbut = 1;
                                selectedtype = 0;
                              });
                            },
                            child: graphbut == 1
                                ? TimesDay("1D", graphbut,
                                    Color.fromARGB(255, 2, 107, 6))
                                : TimesDay("1D", graphbut, Colors.blue)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.06,
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                print(graphbut);

                                graphbut = 2;
                                selectedtype = 1;
                              });
                            },
                            child: graphbut == 2
                                ? TimesDay("2D", graphbut,
                                    Color.fromARGB(255, 2, 107, 6))
                                : TimesDay("2D", graphbut, Colors.blue)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.06,
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                print(graphbut);

                                graphbut = 3;
                                selectedtype = 2;
                              });
                            },
                            child: graphbut == 3
                                ? TimesDay("3D", graphbut,
                                    Color.fromARGB(255, 2, 107, 6))
                                : TimesDay("3D", graphbut, Colors.blue)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.06,
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                print(graphbut);

                                graphbut = 4;
                                selectedtype = 3;
                              });
                            },
                            child: graphbut == 4
                                ? TimesDay("4D", graphbut,
                                    Color.fromARGB(255, 2, 107, 6))
                                : TimesDay("4D", graphbut, Colors.blue)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.06,
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                print(graphbut);

                                graphbut = 5;
                                selectedtype = 4;
                              });
                            },
                            child: graphbut == 5
                                ? TimesDay("5D", graphbut,
                                    Color.fromARGB(255, 2, 107, 6))
                                : TimesDay("5D", graphbut, Colors.blue)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.06,
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                print(graphbut);

                                graphbut = 6;
                                selectedtype = 5;
                              });
                            },
                            child: graphbut == 6
                                ? TimesDay("6D", graphbut,
                                    Color.fromARGB(255, 2, 107, 6))
                                : TimesDay("6D", graphbut, Colors.blue)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.06,
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                print(graphbut);

                                graphbut = 7;
                                selectedtype = 6;
                              });
                            },
                            child: graphbut == 7
                                ? TimesDay("7D", graphbut,
                                    Color.fromARGB(255, 2, 107, 6))
                                : TimesDay("7D", graphbut, Colors.blue)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.06,
                        ),
                      ],
                    ),
                  )
                ],
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.33,
          ),
          Container(
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
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PillRemainder()));
            },
            child: Container(
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
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Timelines()));
            },
            child: Container(
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
            ),
          )
        ]));
  }

  Widget days(context, date, day, colorcolor, fontcolor) {
    return Container(
      decoration: BoxDecoration(
        color: colorcolor,
        borderRadius: BorderRadius.all(
            Radius.circular(MediaQuery.of(context).size.width * 0.05)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.02,
          right: MediaQuery.of(context).size.width * 0.06,
          left: MediaQuery.of(context).size.width * 0.06,
          bottom: MediaQuery.of(context).size.height * 0.02),
      margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
      child: Row(
        children: [
          Icon(
            Icons.sunny,
            color: fontcolor,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          Text(
            day,
            style: TextStyle(
                color: fontcolor,
                fontSize: MediaQuery.of(context).size.width * 0.05),
          ),
        ],
      ),
    );
  }
}

class TimesDay extends StatelessWidget {
  final String? title;
  final int? state;
  final Color? col;
  TimesDay(this.title, this.state, this.col);
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
      decoration:
          BoxDecoration(color: col, borderRadius: BorderRadius.circular(5)),
      child: Text(
        title!.toUpperCase(),
        style: theme.bodyText2!.copyWith(color: Colors.white),
      ),
    );
  }
}
