import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
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
            borderRadius: BorderRadius.circular(8),
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
  //   Container(
  // margin: EdgeInsets.only(
  //   top: MediaQuery.of(context).size.height * 0.01,
  //   bottom: MediaQuery.of(context).size.height * 0.03,
  //   left: MediaQuery.of(context).size.height * 0.003,
  //   right: MediaQuery.of(context).size.height * 0.003,
  // ),
  // padding: EdgeInsets.only(
  //   // bottom: MediaQuery.of(context).size.height * 0.02,
  //   top: MediaQuery.of(context).size.height * 0.01,
  //   left: MediaQuery.of(context).size.height * 0.01,
  //   right: MediaQuery.of(context).size.height * 0.01,
  // ),
  // decoration: BoxDecoration(
  //   gradient: LinearGradient(
  //     begin: Alignment.topCenter,
  //     end: Alignment.bottomCenter,
  //     stops: [0.1, 0.5],
  //     colors: [
  //       Colors.blue.withOpacity(0.7),
  //       Colors.lightBlue.withOpacity(0.3),
  //     ],
  //   ),
  //   borderRadius: BorderRadius.only(
  //       bottomLeft: Radius.circular(12.0),
  //       topRight: Radius.circular(12),
  //       bottomRight: Radius.circular(12.0),
  //       topLeft: Radius.circular(12)),
  // ),
  return Container(
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.01,
      bottom: MediaQuery.of(context).size.height * 0.02,
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
      //color: Colors.white,
      gradient: LinearGradient(colors: [
        Color.fromARGB(255, 68, 184, 238),
        Colors.white,
        Color.fromARGB(255, 68, 184, 238),
        Colors.white
      ]),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(12.0),
        topLeft: Radius.circular(12),
        bottomRight: Radius.circular(12.0),
        topRight: Radius.circular(70.0),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.blue.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 0),
              child: Padding(
                padding: const EdgeInsets.only(top: 0, left: 0),
                child: Column(
                  children: [
                    Text("  Total Tasks",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Constants.grey,
                            letterSpacing: 1)),
                    Text(
                      "10",
                      style: TextStyle(fontSize: 15, letterSpacing: 2),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.002)),
                    Text(
                      "   Completed",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Constants.grey,
                          letterSpacing: 1),
                    ),
                    Text(
                      "05",
                      style: TextStyle(fontSize: 15, letterSpacing: 2),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.002,
                // top: MediaQuery.of(context).size.height * 0.001,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.height * 0.03,
                        // left: MediaQuery.of(context).size.height * 0.001,
                      ),
                      width: MediaQuery.of(context).size.width * 0.230,
                      height: MediaQuery.of(context).size.height * 0.115,
                      child: new CircularPercentIndicator(
                        backgroundColor: Colors.orange,
                        progressColor: Colors.blue,
                        fillColor: Colors.transparent,
                        radius: 42.0,
                        lineWidth: 10.0,
                        animation: true,
                        percent: 0.7,
                        center: new Text(
                          "70.0%",
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
        Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.04)),
        Divider(
          color: Constants.grey,
          thickness: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Image.asset(
                'assets/trophy.png',
                width: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10),
              child: Image.asset(
                'assets/badge.png',
                width: 60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 12),
              child: CircleAvatar(
                  backgroundColor: Constants.mainColor1,
                  radius: 16,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  )
                  // Text(
                  //   "+",
                  //   style: TextStyle(
                  //       color: Constants.mainColorWhite,
                  //       fontWeight: FontWeight.w500),
                  // ),
                  ),
            )
          ],
        ),
        Row(
          children: [
            LinearPercentIndicator(
              animation: true,
              animationDuration: 200,
              width: 80.0,
              lineHeight: 8.0,
              percent: 0.5,
              barRadius: const Radius.circular(16),
              backgroundColor: Colors.grey,
              progressColor: Colors.orange,
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height * 0.04)),
            LinearPercentIndicator(
              animation: true,
              animationDuration: 200,
              width: 80.0,
              lineHeight: 8.0,
              percent: 0.5,
              barRadius: const Radius.circular(16),
              backgroundColor: Colors.grey,
              progressColor: Colors.green,
            ),
          ],
        )
      ],
    ),
  );
}
