import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../Constants/constants.dart';

class MapCrausel extends StatefulWidget {
  const MapCrausel({Key? key}) : super(key: key);

  @override
  State<MapCrausel> createState() => _MapCrauselState();
}

class _MapCrauselState extends State<MapCrausel> {
  @override
  Widget build(BuildContext context) {
    return Container(child: crauselSilder2(context));
  }
}

Widget crauselSilder2(context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: CarouselSlider(
      items: [
        mapslider(
          context,
        ),
      ],
      options: CarouselOptions(
        //autoPlay: true,
        height: 270.0,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 900),
        viewportFraction: 0.8,
      ),
    ),
  );
}

Widget mapslider(context) {
  return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.350,
        width: MediaQuery.of(context).size.width * 0.550,
        // margin: EdgeInsets.only(
        //   top: MediaQuery.of(context).size.height * 0.02,
        //   bottom: MediaQuery.of(context).size.height * 0.01,
        //   left: MediaQuery.of(context).size.height * 0.12,
        //   right: MediaQuery.of(context).size.height * 0.12,
        // ),
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.height * 0.01,
          right: MediaQuery.of(context).size.height * 0.01,
          bottom: MediaQuery.of(context).size.height * 0.01,
        ),
        decoration: BoxDecoration(
          color: Constants.mainColorWhite,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.circle,
                  color: Constants.redcolor,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 18,
                      color: Constants.mainColor1,
                    ),
                    Text(
                      "4.2",
                      style: TextStyle(color: Constants.mainColor1),
                    ),
                  ],
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.10,
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.025,
                right: MediaQuery.of(context).size.height * 0.025,
                top: MediaQuery.of(context).size.height * 0.020,
              ),
              child: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/doctor2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Center(
                child: Text(
              "Alexander Wolfe",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.01,
            // ),
            Center(
                child: Text(
              "Cardiologist",
              style: TextStyle(color: Constants.grey),
            )),
            Container(
              height: MediaQuery.of(context).size.height * 0.070,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.04,
                bottom: MediaQuery.of(context).size.height * 0.01,
              ),
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.0002,
                bottom: MediaQuery.of(context).size.height * 0.002,
                left: MediaQuery.of(context).size.height * 0.01,
                right: MediaQuery.of(context).size.height * 0.01,
              ),
              decoration: BoxDecoration(
                color: Constants.bluecolor,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.all(08),
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01,
                      bottom: MediaQuery.of(context).size.height * 0.01,
                      left: MediaQuery.of(context).size.height * 0.01,
                      right: MediaQuery.of(context).size.height * 0.01,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: GestureDetector(
                        onTap: () {}, child: Icon(Icons.message)),
                  ),
                  Container(
                    margin: EdgeInsets.all(08),
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01,
                      left: MediaQuery.of(context).size.height * 0.07,
                      bottom: MediaQuery.of(context).size.height * 0.01,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: GestureDetector(
                        onTap: () {}, child: Icon(Icons.message)),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ));
}
