import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../Constants/constants.dart';

class PillRemainder extends StatefulWidget {
  const PillRemainder({Key? key}) : super(key: key);

  @override
  State<PillRemainder> createState() => _PillRemainderState();
}

class _PillRemainderState extends State<PillRemainder> {
  final List<String> imagesList = [
    'assets/shop1.jpg',
    'assets/shop1.jpg',
    'assets/shop1.jpg',
    'assets/shop1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.mainColorWhite,
      appBar: AppBar(
          backgroundColor: Constants.mainColor1,
          title: Text(
            "Pill Remainder",
            style: TextStyle(color: Constants.mainColorWhite),
          )),
      body: ListView(children: [
        Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            left: MediaQuery.of(context).size.width * 0.090,
            right: MediaQuery.of(context).size.width * 0.040,
          ),
          child: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 209, 203, 203),
            radius: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PillRemainder()));
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 35, color: Colors.black),
                  ),
                ),
                Text("Add Reminder",
                    style: TextStyle(fontSize: 35, color: Colors.black)),
              ],
            ), //Text
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.03,
            bottom: MediaQuery.of(context).size.height * 0.01,
            left: MediaQuery.of(context).size.height * 0.02,
            right: MediaQuery.of(context).size.height * 0.02,
          ),
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.015,
            left: MediaQuery.of(context).size.height * 0.02,
            right: MediaQuery.of(context).size.height * 0.02,
            bottom: MediaQuery.of(context).size.height * 0.01,
          ),
          decoration: BoxDecoration(
            color: Constants.bluecolor,
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
          child: Center(
              child: Text(
            "My Mart",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
          )),
        ),
        // Shop Slider
        shopcrausel(),
      ]),
    );
  }

// Shop CarouselSlider
  Widget shopcrausel() {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: imagesList
          .map(
            (item) => Padding(
              padding: const EdgeInsets.all(0.0),
              child: Card(
                elevation: 6.0,
                shadowColor: Constants.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Image.network(
                        item,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
