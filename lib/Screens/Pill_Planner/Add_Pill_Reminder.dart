import 'package:flutter/material.dart';

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
  var graphbut1 = 1;
  var selectedtype = 0;
  var a = 0;
  TimeOfDay initialTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 233, 233, 233),
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
              borderRadius: BorderRadius.circular(25),
              // border: Border.all(color: Constants.blackcolor, width: 02),
              // gradient: LinearGradient(colors: [
              //   Colors.lightBlueAccent,
              //   Colors.blue,
              //   Colors.lightBlueAccent,
              //   Colors.lightBlueAccent
              // ]),
              color: Constants.green,
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
                    top: MediaQuery.of(context).size.height * 0.02,
                    bottom: MediaQuery.of(context).size.height * 0.01,
                    left: MediaQuery.of(context).size.height * 0.02,
                    right: MediaQuery.of(context).size.height * 0.02,
                  ),
                  // padding: EdgeInsets.only(
                  //   top: MediaQuery.of(context).size.height * 0.0002,
                  //   bottom: MediaQuery.of(context).size.height * 0.0002,
                  // ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),

                  child: TextField(
                    autofocus: true,
                    style:
                        TextStyle(fontSize: 15.0, color: Constants.blackcolor),
                    decoration: InputDecoration(
                      filled: false,
                      suffixIcon: Icon(Icons.search),
                      fillColor: Constants.mainColorWhite,
                      hintText: 'Search Medicine',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 12.0, top: 12.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        TimeOfDay initialTime = TimeOfDay.now();
                        showTimePicker(
                            context: context, initialTime: initialTime);
                      },
                      child: Icon(
                        Icons.access_alarm_rounded,
                        size: 40,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Constants.mainColorWhite,
                        // border:
                        //     Border.all(color: Constants.bluecolor, width: 03),
                        borderRadius: BorderRadius.circular(05),
                      ),
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              itemcounter--;
                            });
                          },
                          child: Icon(Icons.remove)),
                    ),
                    Text(
                      "$itemcounter".toString(),
                      style: TextStyle(fontSize: 30),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Constants.mainColorWhite,
                        // border:
                        //     Border.all(color: Constants.bluecolor, width: 03),
                        borderRadius: BorderRadius.circular(05),
                      ),
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              itemcounter++;
                            });
                          },
                          child: Icon(Icons.add)),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // a = 1;
                          if (a == 1) {
                            a = 0;
                          } else {
                            a = 1;
                          }
                        });
                        // print(a);
                      },
                      child: Container(
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
                          // border:
                          //     Border.all(color: Constants.bluecolor, width: 03),
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
                          "More..",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 15),
                        ),
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
          a == 0
              ? Text("")
              : Column(children: [
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
                        borderRadius: BorderRadius.circular(10),
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
                            "Times a day",
                            style: TextStyle(
                              fontSize: 17,
                              // letterSpacing: 1,
                              // wordSpacing: 0.1,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.10,
                              ),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      print(graphbut);
                                      graphbut = 1;
                                      selectedtype = 0;
                                    });
                                  },
                                  child: graphbut == 1
                                      ? TimesDay("1", graphbut,
                                          Color.fromARGB(255, 2, 107, 6))
                                      : TimesDay("1", graphbut, Colors.blue)),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.10,
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
                                      ? TimesDay("2", graphbut,
                                          Color.fromARGB(255, 2, 107, 6))
                                      : TimesDay("2", graphbut, Colors.blue)),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.10,
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
                                      ? TimesDay("3", graphbut,
                                          Color.fromARGB(255, 2, 107, 6))
                                      : TimesDay("3", graphbut, Colors.blue)),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.10,
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
                                      ? TimesDay("4", graphbut,
                                          Color.fromARGB(255, 2, 107, 6))
                                      : TimesDay("4", graphbut, Colors.blue)),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.10,
                              ),
                            ],
                          )
                        ],
                      )),
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
                      borderRadius: BorderRadius.circular(10),
                      // gradient: LinearGradient(colors: [
                      //   Colors.orangeAccent,
                      //   Colors.limeAccent,
                      //   Colors.orangeAccent,
                      // ]),
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
                    child: Column(children: [
                      Text(
                        "Meal",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          // letterSpacing: 0.1,
                          // wordSpacing: 0.1,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    print(graphbut1);

                                    graphbut1 = 1;
                                    selectedtype = 0;
                                  });
                                },
                                child: graphbut1 == 1
                                    ? TimesDay("Before ", graphbut,
                                        Color.fromARGB(255, 2, 107, 6))
                                    : TimesDay(
                                        "Before", graphbut1, Colors.blue)),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.06,
                            ),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    print(graphbut1);

                                    graphbut1 = 2;
                                    selectedtype = 1;
                                  });
                                },
                                child: graphbut1 == 2
                                    ? TimesDay("After ", graphbut,
                                        Color.fromARGB(255, 2, 107, 6))
                                    : TimesDay(
                                        "After", graphbut1, Colors.blue)),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.06,
                            ),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    print(graphbut1);

                                    graphbut1 = 3;
                                    selectedtype = 2;
                                  });
                                },
                                child: graphbut1 == 3
                                    ? TimesDay("With", graphbut,
                                        Color.fromARGB(255, 2, 107, 6))
                                    : TimesDay("With", graphbut1, Colors.blue)),
                          ]),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.06,
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
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
                      // gradient: LinearGradient(colors: [
                      //   Colors.limeAccent,
                      //   Colors.orangeAccent,
                      //   Colors.orangeAccent,
                      // ]),
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
                    child: Center(
                        child: Text(
                      "Take this Med for 5 Days ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          // letterSpacing: 0.1),
                      ),
                    )),
                  ),
                ]),
          // ElevatedButton(
          //     onPressed: () {
          //       TimeOfDay initialTime = TimeOfDay.now();
          //       showTimePicker(
          //         context: context,
          //         initialTime: initialTime,
          //       );
          //     },
          //     child: Text("assa")),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            // padding: EdgeInsets.only(
            //   top: MediaQuery.of(context).size.height * 0.01,
            //   bottom: MediaQuery.of(context).size.height * 0.01,
            //   left: MediaQuery.of(context).size.height * 0.001,
            //   right: MediaQuery.of(context).size.height * 0.001,
            // ),
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.001,
              bottom: MediaQuery.of(context).size.height * 0.001,
              left: MediaQuery.of(context).size.height * 0.02,
              right: MediaQuery.of(context).size.height * 0.02,
            ),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(07),
            //   color: Constants.bannercolor,
            //   boxShadow: [
            //     BoxShadow(
            //       color: Colors.blue.withOpacity(0.2),
            //       spreadRadius: 0.1,
            //       blurRadius: 2,
            //       offset: Offset(0, 3), // changes position of shadow
            //     ),
            //   ],
            // ),
            child: ElevatedButton(
            
              style: ElevatedButton.styleFrom(
       
                shape: StadiumBorder(),backgroundColor: Constants.green),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Timelines()));
              }, child: 
            Text("+ Add Another Pill",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
            )
          

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
                height: MediaQuery.of(context).size.height * 0.06,
              // padding: EdgeInsets.only(
              //   top: MediaQuery.of(context).size.height * 0.01,
              //   bottom: MediaQuery.of(context).size.height * 0.01,
              //   left: MediaQuery.of(context).size.height * 0.001,
              //   right: MediaQuery.of(context).size.height * 0.001,
              // ),
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.001,
                bottom: MediaQuery.of(context).size.height * 0.001,
                left: MediaQuery.of(context).size.height * 0.02,
                right: MediaQuery.of(context).size.height * 0.02,
              ),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10),
              //   border: Border.all(color: Constants.bluecolor, width: 05),
              //   color: Constants.mainColorWhite,
                // // boxShadow: [
                // //   BoxShadow(
                // //     // color: Colors.blue.withOpacity(0.2),
                // //     spreadRadius: 0.1,
                // //     blurRadius: 2,
                // //     offset: Offset(0, 3), // changes position of shadow
                // //   ),
                // ],
              // ),
                child: ElevatedButton(
            
              style: ElevatedButton.styleFrom(
       
                shape: StadiumBorder(),backgroundColor: Constants.green),
              onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>PillRemainder()));
              }, child: 
            Text("Back To  Pill Reminder",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
            )
            
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          InkWell(
            onTap: () {
          
            },
            child: Container(
                height: MediaQuery.of(context).size.height * 0.06,
              // padding: EdgeInsets.only(
              //   top: MediaQuery.of(context).size.height * 0.01,
              //   bottom: MediaQuery.of(context).size.height * 0.01,
              //   left: MediaQuery.of(context).size.height * 0.001,
              //   right: MediaQuery.of(context).size.height * 0.001,
              // ),
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.001,
                bottom: MediaQuery.of(context).size.height * 0.001,
                left: MediaQuery.of(context).size.height * 0.02,
                right: MediaQuery.of(context).size.height * 0.02,
              ),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10),
              //   border: Border.all(color: Constants.bluecolor, width: 05),
              //   color: Constants.mainColorWhite,
              //   // boxShadow: [
              //   //   BoxShadow(
              //   //     color: Colors.blue.withOpacity(0.2),
              //   //     spreadRadius: 0.1,
              //   //     blurRadius: 2,
              //   //     offset: Offset(0, 3), // changes position of shadow
              //   //   ),
              //   // ],
              // ),
              child: ElevatedButton(
            
              style: ElevatedButton.styleFrom(
       
                shape: StadiumBorder(),backgroundColor: Constants.green),
              onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Timelines()));
              }, child: 
            Text("Back To Home ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
            )
              // child: Center(
              //     child: Text(
              //   "Back To Home ",
              //   style: TextStyle(
              //       fontSize: 25,
              //       fontWeight: FontWeight.w400,
              //       color: Constants.blackcolor),
              // )),
            ),
          )
        ]));
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

Future<TimeOfDay?> showTimePicker({
  required BuildContext context,
  required TimeOfDay initialTime,
  TransitionBuilder? builder,
  bool useRootNavigator = true,
  TimePickerEntryMode initialEntryMode = TimePickerEntryMode.dial,
  String? cancelText,
  String? confirmText,
  String? helpText,
  String? errorInvalidText,
  String? hourLabelText,
  String? minuteLabelText,
  RouteSettings? routeSettings,
  EntryModeChangeCallback? onEntryModeChanged,
  Offset? anchorPoint,
}) async {
  assert(context != null);
  assert(initialTime != null);
  assert(useRootNavigator != null);
  assert(initialEntryMode != null);
  assert(debugCheckHasMaterialLocalizations(context));

  final Widget dialog = TimePickerDialog(
    initialTime: initialTime,
    initialEntryMode: initialEntryMode,
    cancelText: cancelText,
    confirmText: confirmText,
    helpText: helpText,
    errorInvalidText: errorInvalidText,
    hourLabelText: hourLabelText,
    minuteLabelText: minuteLabelText,
    onEntryModeChanged: onEntryModeChanged,
  );
  return showDialog<TimeOfDay>(
    context: context,
    useRootNavigator: useRootNavigator,
    builder: (BuildContext context) {
      return builder == null ? dialog : builder(context, dialog);
    },
    routeSettings: routeSettings,
    anchorPoint: anchorPoint,
  );
}
