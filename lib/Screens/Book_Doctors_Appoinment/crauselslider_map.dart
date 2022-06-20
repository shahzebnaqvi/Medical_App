import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/Screens/Book_Doctors_Appoinment/My_Apponiments.dart';

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
        GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyAppointments()));
            },
            child: mapslider(context, 'Alexander Robert')),
        mapslider(context, 'Royal Shano'),
        mapslider(context, 'David Warner'),
        mapslider(context, 'Bridge Duf'),
      ],
      options: CarouselOptions(
        autoPlay: true,
        height: 290.0,
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

Widget mapslider(context, name) {
  return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.320,
        width: MediaQuery.of(context).size.width * 0.550,
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.height * 0.01,
          right: MediaQuery.of(context).size.height * 0.01,
          bottom: MediaQuery.of(context).size.height * 0.001,
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
              height: MediaQuery.of(context).size.height * 0.11,
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.025,
                right: MediaQuery.of(context).size.height * 0.025,
                top: MediaQuery.of(context).size.height * 0.020,
              ),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width / 0.30,
                child: ClipOval(
                  child: Image.asset(
                    'assets/doctor2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Center(
                child: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            Center(
                child: Text(
              "Cardiologist",
              style: TextStyle(color: Constants.grey),
            )),
            Container(
              height: MediaQuery.of(context).size.height * 0.060,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.04,
                bottom: MediaQuery.of(context).size.height * 0.01,
              ),
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.0002,
                left: MediaQuery.of(context).size.height * 0.01,
                right: MediaQuery.of(context).size.height * 0.01,
              ),
              decoration: BoxDecoration(
                color: Constants.bluecolor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 8,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(05),
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01,
                      bottom: MediaQuery.of(context).size.height * 0.06,
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
                        onTap: () {},
                        child: Icon(
                          Icons.phone,
                          size: 25,
                        )),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ));
}
