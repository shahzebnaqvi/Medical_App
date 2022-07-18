import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../Constants/constants.dart';

class crauselSilder1 extends StatefulWidget {
  const crauselSilder1({Key? key}) : super(key: key);

  @override
  State<crauselSilder1> createState() => _crauselSilder1State();
}

class _crauselSilder1State extends State<crauselSilder1> {
  @override
  Widget build(BuildContext context) {
    return Container(child: crauselSilder2(context, 'Start'));
  }
}

Widget crauselSilder2(context, days) {
  return Container(
    child: CarouselSlider(
      items: [
        slidercontainer1(context, '10', '07', 0.60),
        slidercontainer1(context, '600', '300', 0.50),
        slidercontainer1(context, '700', '400', 0.70),
        slidercontainer1(context, '800', '500', 0.80),
        slidercontainer1(context, '900', '600', 0.85),
        slidercontainer1(context, '1000', '700', 0.90),
        slidercontainer1(context, '1100', '800', 0.95),
        slidercontainer1(context, '1200', '900', 0.55),
        Medicine(context),
      ],
      options: CarouselOptions(
        height: 265.0,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    ),
  );
}

// Medicine Slider
Widget Medicine(context) {
  return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.01,
        bottom: MediaQuery.of(context).size.height * 0.03,
        left: MediaQuery.of(context).size.height * 0.003,
        right: MediaQuery.of(context).size.height * 0.003,
      ),
      padding: EdgeInsets.only(
        // bottom: MediaQuery.of(context).size.height * 0.02,
        top: MediaQuery.of(context).size.height * 0.01,
        left: MediaQuery.of(context).size.height * 0.01,
        right: MediaQuery.of(context).size.height * 0.01,
      ),
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
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          decoration: BoxDecoration(
            color: Constants.mainColorWhite,
            border: Border.all(
                color: Constants.mainColor1,
                width: MediaQuery.of(context).size.width * 0.01),
            borderRadius: BorderRadius.circular(08),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "TODAY'S TASK",
                style: TextStyle(
                    color: Constants.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Container(
          padding: EdgeInsets.only(
            // bottom: MediaQuery.of(context).size.height * 0.01,
            // top: MediaQuery.of(context).size.height * 0.01,
            left: MediaQuery.of(context).size.height * 0.01,
            right: MediaQuery.of(context).size.height * 0.01,
          ),
          decoration: BoxDecoration(
            color: Constants.mainColorWhite,
            border: Border.all(
                color: Constants.mainColor1,
                width: MediaQuery.of(context).size.width * 0.01),
            borderRadius: BorderRadius.circular(08),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Text(
            'Done',
            style: TextStyle(
                color: Constants.mainColor1,
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Column(children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Icon(
                Icons.circle,
                color: Constants.green,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.02),
              Text(
                "Today, 04:40 PM",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(padding: EdgeInsets.only(left: 8)),
              Text("Panadol Paracetamol .... ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              Icon(
                Icons.medication_liquid,
                color: Constants.bluecolor,
                size: 30,
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Icon(Icons.access_alarm),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Text("Take Before Meal For 07 Days ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ],
          )
        ]),
      ]));
}

Widget slidercontainer1(context, totaltasks, completedtasks, values) {
  return Container(
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.01,
      bottom: MediaQuery.of(context).size.height * 0.03,
      left: MediaQuery.of(context).size.height * 0.003,
      right: MediaQuery.of(context).size.height * 0.003,
    ),
    padding: EdgeInsets.only(
      // bottom: MediaQuery.of(context).size.height * 0.02,
      top: MediaQuery.of(context).size.height * 0.01,
      left: MediaQuery.of(context).size.height * 0.01,
      right: MediaQuery.of(context).size.height * 0.01,
    ),
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
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          decoration: BoxDecoration(
            color: Constants.mainColorWhite,
            border: Border.all(
                color: Constants.mainColor1,
                width: MediaQuery.of(context).size.width * 0.01),
            borderRadius: BorderRadius.circular(08),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "TODAY'S TASK",
                style: TextStyle(
                    color: Constants.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Container(
          padding: EdgeInsets.only(
            // bottom: MediaQuery.of(context).size.height * 0.01,
            // top: MediaQuery.of(context).size.height * 0.01,
            left: MediaQuery.of(context).size.height * 0.01,
            right: MediaQuery.of(context).size.height * 0.01,
          ),
          decoration: BoxDecoration(
            color: Constants.mainColorWhite,
            border: Border.all(
                color: Constants.mainColor1,
                width: MediaQuery.of(context).size.width * 0.01),
            borderRadius: BorderRadius.circular(08),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Text(
            '+ Add New',
            style: TextStyle(
                color: Constants.mainColor1,
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.002,
                top: MediaQuery.of(context).size.height * 0.001,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.001,
                      top: MediaQuery.of(context).size.height * 0.03,
                      // bottom: MediaQuery.of(context).size.height * 0.04
                    ),
                    width: MediaQuery.of(context).size.width * 0.230,
                    height: MediaQuery.of(context).size.height * 0.1115,
                    child: new CircularProgressIndicator(
                      strokeWidth: 05,
                      value: values,
                      color: Constants.bluecolor,
                      backgroundColor: Colors.grey[100],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text("70%"), Text("Completed")],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 0),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 5),
                child: Column(
                  children: [
                    Text("  Total Tasks: 10",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Constants.mainColor1,
                            letterSpacing: 1)),
                    Text(
                      "   Completed: 05 ",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Constants.mainColor1,
                          letterSpacing: 1),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

//

// Container(
//   margin: EdgeInsets.only(
//     // top: MediaQuery.of(context).size.height * 0.08,
//     bottom: MediaQuery.of(context).size.height * 0.12,
//     left: MediaQuery.of(context).size.height * 0.003,
//     // right: MediaQuery.of(context).size.height * 0.003,
//   ),
//   padding: EdgeInsets.only(
//     bottom: MediaQuery.of(context).size.height * 0.01,
//     top: MediaQuery.of(context).size.height * 0.01,
//     left: MediaQuery.of(context).size.height * 0.01,
//     right: MediaQuery.of(context).size.height * 0.01,
//   ),
//   decoration: BoxDecoration(
//     color: Constants.mainColorWhite,
//     border: Border.all(
//         color: Constants.mainColor1,
//         width: MediaQuery.of(context).size.width * 0.01),
//     borderRadius: BorderRadius.circular(08),
//     boxShadow: [
//       BoxShadow(
//         color: Colors.grey.withOpacity(0.2),
//         spreadRadius: 3,
//         blurRadius: 5,
//         offset: Offset(0, 3), // changes position of shadow
//       ),
//     ],
//   ),
//   child: Text(
//     '+ Add New',
//     style: TextStyle(
//         color: Constants.mainColor1,
//         fontWeight: FontWeight.w500,
//         fontSize: 15),
//   ),
// )

// Container(
//   margin: EdgeInsets.only(
//     // top: MediaQuery.of(context).size.height * 0.08,
//     bottom: MediaQuery.of(context).size.height * 0.0,
//     left: MediaQuery.of(context).size.height * 0.03,
//     right: MediaQuery.of(context).size.height * 0.03,
//   ),
//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Text("  Total Tasks: 10",
//           style: TextStyle(
//               fontSize: 15,
//               fontWeight: FontWeight.w500,
//               color: Constants.mainColor1,
//               letterSpacing: 1)),
//       Text(
//         "   Completed: 05 ",
//         style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.w500,
//             color: Constants.mainColor1,
//             letterSpacing: 1),
//       ),
//     ],
//   ),
// )

// SizedBox(
//   height: MediaQuery.of(context).size.height * 0.03,
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
//   Text(
//     completedtasks,
//     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//   ),
// Container(
//   margin: EdgeInsets.only(
//     left: MediaQuery.of(context).size.height * 0.02,
//     top: MediaQuery.of(context).size.height * 0.001,
//   ),
//   child: Stack(
//     alignment: Alignment.center,
//     children: <Widget>[
//       Container(
//         margin: EdgeInsets.only(
//             left: MediaQuery.of(context).size.height * 0.001),
//         width: 90,
//         height: 90,
//         child: new CircularProgressIndicator(
//           strokeWidth: 12,
//           value: values,
//           color: Constants.bluecolor,
//           backgroundColor: Colors.grey[100],
//         ),
//       ),
//       Column(
//         children: [Text("70%"), Text("Completed")],
//       ),
//     ],
//   ),
// ),
//     Text(
//       totaltasks,
//       style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//     ),
//   ],
// ),
// ),
