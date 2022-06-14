import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/Screens/Book_Doctors_Appoinment/Hospital.dart';
import 'package:medical_app/Screens/Health%20&%20Fitness%20Goal/test_indicators.dart';
import 'package:medical_app/Screens/auth/recipes.dart';
import 'package:medical_app/Screens/auth/signup.dart';
import 'package:medical_app/Screens/bottombar.dart';
import '../Constants/constants.dart';
import 'package:medical_app/Screens/bottombar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'carouselslider.dart';

class Timelines extends StatefulWidget {
  const Timelines({Key? key}) : super(key: key);

  @override
  State<Timelines> createState() => _TimelinesState();
}

class _TimelinesState extends State<Timelines> {
  bool value = false;
  bool value1 = false;
  bool value2 = false;
  String _dropDownValue = "";
  double currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //backgroundColor: Constants.redcolor,
        // appBar: AppBar(
        //   backgroundColor: Constants.mainColorWhite,
        //   title: Text(
        //     "Timelines",
        //     style: TextStyle(color: Constants.blackcolor),
        //   ),
        //   leading: IconButton(
        //       color: Colors.white,
        //       icon: Icon(
        //         Icons.arrow_back,
        //         color: Colors.black,
        //         size: 20,
        //       ),
        //       onPressed: () {
        //         Navigator.pop(context);
        //       }),
        // ),
        body: Container(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/curve.jpg"), fit: BoxFit.cover)),
            child: ListView(children: [
              profile(context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => recipes()));
                  },
                  child: crauselSilder1()),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              workoutplan(
                context,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              dietplan(context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              healthtracker(context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              mymedicine(
                context,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Challenges(context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              shopnow(context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              water(context),
            ])));
  }

// Profile
  Widget profile(context) {
    return Container(
        child: ListTile(
      leading: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Hospital()));
        },
        child: CircleAvatar(
            child: ClipOval(child: Image.asset('assets/doctor2.jpg'))),
      ),
      title: Text(
        'Hello Joseph Allison,',
        style: TextStyle(color: Constants.mainColorWhite),
        textScaleFactor: 1,
      ),
      subtitle: Text(
        'Things look allright',
        style: TextStyle(color: Constants.mainColorWhite),
        textScaleFactor: 1,
      ),
      trailing: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => test_indicators()));
        },
        child: Icon(
          Icons.notification_add_rounded,
          color: Constants.mainColorWhite,
        ),
      ),
    ));
  }

// // Widget My Tasks
//   Widget mytasks(context) {
//     return Container(
//       width: MediaQuery.of(context).size.width * 0.9,
//       margin: EdgeInsets.only(
//         top: MediaQuery.of(context).size.height * 0.01,
//         bottom: MediaQuery.of(context).size.height * 0.01,
//         left: MediaQuery.of(context).size.height * 0.02,
//         right: MediaQuery.of(context).size.height * 0.02,
//       ),
//       padding: EdgeInsets.only(
//         bottom: MediaQuery.of(context).size.height * 0.03,
//         top: MediaQuery.of(context).size.height * 0.01,
//         left: MediaQuery.of(context).size.height * 0.01,
//         right: MediaQuery.of(context).size.height * 0.01,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.2),
//             spreadRadius: 5,
//             blurRadius: 7,
//             offset: Offset(0, 3), // changes position of shadow
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Icon(
//                 Icons.arrow_circle_left_outlined,
//                 size: 30,
//                 color: Constants.grey,
//               ),
//               Text(
//                 "MY TASKS",
//                 style: TextStyle(
//                     color: Constants.grey,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w500),
//               ),
//               Icon(
//                 Icons.arrow_circle_right_outlined,
//                 size: 30,
//                 color: Constants.grey,
//               ),
//             ],
//           ),
//           SizedBox(
//             height: MediaQuery.of(context).size.height * 0.03,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "TODAY",
//                 style: TextStyle(
//                   fontWeight: FontWeight.w500,
//                 ),
//               )
//             ],
//           ),
//           SizedBox(
//             height: MediaQuery.of(context).size.height * 0.03,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "500",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//               ),

//               // CircularProgressIndicator(
//               //   // key: 3,
//               //   value: 5,
//               //   semanticsLabel: "ssd",
//               //   strokeWidth: 10,
//               //   semanticsValue: "34",
//               //   valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
//               // ),

//               Stack(
//                 alignment: Alignment.center,
//                 children: <Widget>[
//                   Container(
//                     width: 80,
//                     height: 80,
//                     child: new CircularProgressIndicator(
//                       strokeWidth: 12,
//                       value: 0.60,
//                       color: Constants.bluecolor,
//                       backgroundColor: Colors.grey[100],
//                     ),
//                   ),
//                   Text("70%"),
//                 ],
//               ),
//               Text(
//                 "1000",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//               ),
//               // CircularProgressIndicator(
//               //     backgroundColor: Colors.grey,
//               //     color: Colors.purple,
//               //     strokeWidth: 10,
//               //     value: 0.5),

//               // CircularPercentIndicator(
//               //   radius: 60.0,
//               //   lineWidth: 5.0,
//               //   percent: 1.0,
//               //   center: new Text("100%"),
//               //   progressColor: Colors.red,
//               // ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [Text("Completed Tasks"), Text("Total Tasks")],
//           )
//         ],
//       ),
//     );
//   }

// Widget Workoutplan
  Widget workoutplan(context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.9,
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.01,
          bottom: MediaQuery.of(context).size.height * 0.01,
          left: MediaQuery.of(context).size.height * 0.02,
          right: MediaQuery.of(context).size.height * 0.02,
        ),
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
              decoration: BoxDecoration(
                color: Constants.bluecolor,
                borderRadius: BorderRadius.circular(05),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0.5,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("WORKOUT PLAN",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Constants.mainColorWhite,
                      )),
                  Container(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.01,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 0.5,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: DropdownButton<String>(
                      underline: Container(),
                      hint: _dropDownValue == ""
                          ? Text('+ ADD',
                              style: TextStyle(
                                  color: Constants.bluecolor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15))
                          : Text(
                              _dropDownValue,
                              style: TextStyle(
                                color: Constants.bluecolor,
                              ),
                            ),
                      items: <String>[
                        'Create Tasks',
                        'Edit Task',
                        ' Manage Tasks',
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signup()));
                              },
                              child: Text(value)),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _dropDownValue = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Text(
                      "Today Tasks",
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Icon(Icons.watch_later_outlined),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Text("40 mins")
                  ],
                )
              ],
            ),
            Text("Chest",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
            Divider(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "Weekly Tasks",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Text("Chest,Trap,Tricep,Abs",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
            Divider(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: [
                Icon(Icons.watch_later_outlined),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                Text(
                  "60 mins",
                  style: TextStyle(fontWeight: FontWeight.w500),
                )
              ],
            )
          ],
        ));
  }

// Widget My Diet Plan
  Widget dietplan(context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.01,
        bottom: MediaQuery.of(context).size.height * 0.01,
        left: MediaQuery.of(context).size.height * 0.02,
        right: MediaQuery.of(context).size.height * 0.02,
      ),
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            decoration: BoxDecoration(
              color: Constants.bluecolor,
              borderRadius: BorderRadius.circular(05),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0.5,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("MY DIET",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Constants.mainColorWhite,
                    )),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.01,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 0.5,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: DropdownButton<String>(
                      underline: Container(),
                      hint: _dropDownValue == ""
                          ? Text('+ ADD',
                              style: TextStyle(
                                  color: Constants.bluecolor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15))
                          : Text(
                              _dropDownValue,
                              style: TextStyle(
                                color: Constants.bluecolor,
                              ),
                            ),
                      items: <String>[
                        'Create Tasks',
                        'Edit Task',
                        ' Manage Tasks',
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signup()));
                              },
                              child: Text(value)),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _dropDownValue = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Text("LUNCH",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.13),
                    Checkbox(
                        value: value,
                        onChanged: (bool) {
                          setState(() {
                            this.value = !value;
                          });
                        }),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Text("BREAKFAST",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                    Checkbox(
                        value: value1,
                        onChanged: (bool) {
                          setState(() {
                            this.value1 = !value1;
                          });
                        })
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Text("DINNER",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.11),
                    Checkbox(
                        value: value2,
                        onChanged: (bool) {
                          setState(() {
                            this.value2 = !value2;
                          });
                        })
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

// Widget Health Tarcker
  Widget healthtracker(context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.01,
        bottom: MediaQuery.of(context).size.height * 0.01,
        left: MediaQuery.of(context).size.height * 0.02,
        right: MediaQuery.of(context).size.height * 0.02,
      ),
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            decoration: BoxDecoration(
              color: Constants.bluecolor,
              borderRadius: BorderRadius.circular(05),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0.5,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("HEALTH TRACKER",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Constants.mainColorWhite,
                    )),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.01,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 0.5,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: DropdownButton<String>(
                      underline: Container(),
                      hint: _dropDownValue == ""
                          ? Text('+ ADD',
                              style: TextStyle(
                                  color: Constants.bluecolor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15))
                          : Text(
                              _dropDownValue,
                              style: TextStyle(
                                color: Constants.bluecolor,
                              ),
                            ),
                      items: <String>[
                        'Create Tasks',
                        'Edit Task',
                        ' Manage Tasks',
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signup()));
                              },
                              child: Text(
                                value,
                              )),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _dropDownValue = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("BLOOD PRESSURE",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        )),
                    Text(
                      "Normal",
                      style: TextStyle(
                          color: Constants.grey, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Divider(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("SUGAR  LEVEL",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        )),
                    Text("High", style: TextStyle(color: Constants.grey)),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Divider(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("WEIGHT IN KG",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        )),
                    Text("55kg",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Constants.grey)),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Divider(),
              ],
            ),
          )
        ],
      ),
    );
  }

// Widget My medicine
  Widget mymedicine(context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.01,
        bottom: MediaQuery.of(context).size.height * 0.01,
        left: MediaQuery.of(context).size.height * 0.02,
        right: MediaQuery.of(context).size.height * 0.02,
      ),
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            decoration: BoxDecoration(
              color: Constants.bluecolor,
              borderRadius: BorderRadius.circular(05),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0.5,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("MY MEDICINE",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Constants.mainColorWhite,
                    )),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.01,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 0.5,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: DropdownButton<String>(
                      underline: Container(),
                      hint: _dropDownValue == ""
                          ? Text('+ ADD',
                              style: TextStyle(
                                  color: Constants.bluecolor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15))
                          : Text(
                              _dropDownValue,
                              style: TextStyle(
                                color: Constants.bluecolor,
                              ),
                            ),
                      items: <String>[
                        'Create Tasks',
                        'Edit Task',
                        ' Manage Tasks',
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signup()));
                              },
                              child: Text(value)),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _dropDownValue = value!;
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(),
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    DropdownButton<String>(
                      underline: Container(),
                      hint: _dropDownValue == ""
                          ? Text('PRESCRIPTION MEDICINE',
                              style: TextStyle(
                                color: Constants.blackcolor,
                                fontWeight: FontWeight.w500,
                              ))
                          : Text(
                              _dropDownValue,
                              style: TextStyle(
                                  color: Constants.blackcolor,
                                  fontWeight: FontWeight.w500),
                            ),
                      items: <String>[
                        'PRESCRIPTION MEDICINE',
                        'MIGRAINE',
                        'HUMAIRA'
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _dropDownValue = value!;
                        });
                      },
                    ),
                  ],
                ),
                Divider(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text("NUTRITION SUPPLEMENT",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Divider(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text("MY MEDICAL RECORDS",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Divider(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text("MY APPONIMENT",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Divider(),
              ],
            ),
          )
        ],
      ),
    );
  }

// Widget Challenges
  Widget Challenges(context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.01,
        bottom: MediaQuery.of(context).size.height * 0.01,
        left: MediaQuery.of(context).size.height * 0.02,
        right: MediaQuery.of(context).size.height * 0.02,
      ),
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            decoration: BoxDecoration(
              color: Constants.bluecolor,
              borderRadius: BorderRadius.circular(05),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0.5,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("CHALLENGES",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Constants.mainColorWhite,
                    )),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.01,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 0.5,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: DropdownButton<String>(
                      underline: Container(),
                      hint: _dropDownValue == ""
                          ? Text('+ ADD',
                              style: TextStyle(
                                  color: Constants.bluecolor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15))
                          : Text(
                              _dropDownValue,
                              style: TextStyle(
                                color: Constants.bluecolor,
                              ),
                            ),
                      items: <String>[
                        'Create Tasks',
                        'Edit Task',
                        ' Manage Tasks',
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signup()));
                              },
                              child: Text(
                                value,
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _dropDownValue = value!;
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("DIET CHALLENGES",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Divider(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text("FITNESS CHALLENGES",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Divider(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text("CHALLENGES A FRIEND",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Divider(),
              ],
            ),
          )
        ],
      ),
    );
  }

// Widget Shop now
  Widget shopnow(context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.01,
        bottom: MediaQuery.of(context).size.height * 0.01,
        left: MediaQuery.of(context).size.height * 0.02,
        right: MediaQuery.of(context).size.height * 0.02,
      ),
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            decoration: BoxDecoration(
              color: Constants.bluecolor,
              borderRadius: BorderRadius.circular(05),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0.5,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("SHOP NOW",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Constants.mainColorWhite,
                    )),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.01,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 0.5,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: DropdownButton<String>(
                      underline: Container(),
                      hint: _dropDownValue == ""
                          ? Text('+ ADD',
                              style: TextStyle(
                                  color: Constants.bluecolor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15))
                          : Text(
                              _dropDownValue,
                              style: TextStyle(
                                color: Constants.bluecolor,
                              ),
                            ),
                      items: <String>[
                        'Create Tasks',
                        'Edit Task',
                        ' Manage Tasks',
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signup()));
                              },
                              child: Text(
                                value,
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _dropDownValue = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("PHARMACY",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Divider(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text("HOME ESSENTIALS",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Divider(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text("GYM SUPPLEMENTS",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Divider(),
              ],
            ),
          )
        ],
      ),
    );
  }

// Widget Water
  Widget water(context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.9,
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.01,
          bottom: MediaQuery.of(context).size.height * 0.01,
          left: MediaQuery.of(context).size.height * 0.02,
          right: MediaQuery.of(context).size.height * 0.02,
        ),
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            decoration: BoxDecoration(
              color: Constants.bluecolor,
              borderRadius: BorderRadius.circular(05),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0.5,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("WATER",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Constants.mainColorWhite,
                    )),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.01,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 0.5,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: DropdownButton<String>(
                      underline: Container(),
                      hint: _dropDownValue == ""
                          ? Text('+ ADD',
                              style: TextStyle(
                                  color: Constants.bluecolor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15))
                          : Text(
                              _dropDownValue,
                              style: TextStyle(
                                color: Constants.bluecolor,
                              ),
                            ),
                      items: <String>[
                        'Create Tasks',
                        'Edit Task',
                        ' Manage Tasks',
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signup()));
                              },
                              child: Text(
                                value,
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.01),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                          backgroundColor: Constants.mainColorWhite,
                          child: Image.asset('assets/glass.png')),
                      CircleAvatar(
                          radius: 22,
                          backgroundColor: Constants.mainColorWhite,
                          child: Image.asset('assets/glasswhite.jpg')),
                      CircleAvatar(
                          radius: 22,
                          backgroundColor: Constants.mainColorWhite,
                          child: Image.asset('assets/glasswhite.jpg')),
                      CircleAvatar(
                          radius: 22,
                          backgroundColor: Constants.mainColorWhite,
                          child: Image.asset('assets/glasswhite.jpg')),
                      CircleAvatar(
                          radius: 22,
                          backgroundColor: Constants.mainColorWhite,
                          child: Image.asset('assets/glasswhite.jpg')),
                    ],
                  ),
                  Divider(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(children: [
                    Text("842 Cal",
                        style: TextStyle(
                            fontFamily: 'lato',
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                    Icon(
                      Icons.info,
                      color: Constants.grey,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                    Text(
                      "Recommended 615 -820 cal",
                      style: TextStyle(
                          color: Constants.grey, fontWeight: FontWeight.w500),
                    ),
                  ])
                ]),
          ),

          // Bottombar(),

          //   context: context,
          //   scaffoldColor: Colors.blueAccent,
          //   index: 0,
          //   subItems: [
          //     NavBarItem(iconData: Icons.attach_file, size: 25),
          //     NavBarItem(iconData: Icons.photo, size: 25),
          //     NavBarItem(iconData: Icons.camera_alt, size: 25),
          //   ],
          //   mainIndex: 2,
          //   items: [
          //     NavBarItem(iconData: Icons.list, size: 30),
          //     NavBarItem(iconData: Icons.compare_arrows, size: 30),
          //     NavBarItem(iconData: Icons.add, size: 40),
          //     NavBarItem(iconData: Icons.call_merge, size: 30),
          //     NavBarItem(iconData: Icons.person, size: 30),
          //   ],
          //   onTap: (index) {
          //     setState(() {
          //       currentIndex = index;
          //     });
          //   },
          // )
        ]));
  }
}
