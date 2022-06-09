import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Constants/constants.dart';

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
        slidercontainer1(context, "Today"),
        slidercontainer1(context, "Monday"),
        slidercontainer1(context, "Tuesday"),
        slidercontainer1(context, "Wednesday"),
        slidercontainer1(context, "Thursday"),
        slidercontainer1(context, "Friday"),
        slidercontainer1(context, "Saturday"),
        slidercontainer1(context, "Sunday"),
      ],
      options: CarouselOptions(
        height: 270.0,
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

Widget slidercontainer1(context, days) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.9,
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.01,
      bottom: MediaQuery.of(context).size.height * 0.01,
      left: MediaQuery.of(context).size.height * 0.003,
      right: MediaQuery.of(context).size.height * 0.003,
    ),
    padding: EdgeInsets.only(
      bottom: MediaQuery.of(context).size.height * 0.02,
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.arrow_circle_left_outlined,
              size: 30,
              color: Constants.grey,
            ),
            Text(
              "MY TASKS",
              style: TextStyle(
                  color: Constants.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            Icon(
              Icons.arrow_circle_right_outlined,
              size: 30,
              color: Constants.grey,
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              days,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "500",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.02,
                top: MediaQuery.of(context).size.height * 0.001,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.01),
                    width: 80,
                    height: 80,
                    child: new CircularProgressIndicator(
                      strokeWidth: 12,
                      value: 0.60,
                      color: Constants.bluecolor,
                      backgroundColor: Colors.grey[100],
                    ),
                  ),
                  Text("70%"),
                ],
              ),
            ),
            Text(
              "1000",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("Completed Tasks"), Text("Total Tasks")],
        )
      ],
    ),
  );
}
