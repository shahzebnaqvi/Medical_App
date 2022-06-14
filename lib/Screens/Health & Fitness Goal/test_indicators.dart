import 'package:flutter/material.dart';

import '../../Constants/constants.dart';

class test_indicators extends StatefulWidget {
  const test_indicators({Key? key}) : super(key: key);

  @override
  State<test_indicators> createState() => _test_indicatorsState();
}

class _test_indicatorsState extends State<test_indicators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.mainColorWhite,
      appBar: AppBar(
        backgroundColor: Constants.ubl,
        title: Text(
          "Test Indicators",
          style: TextStyle(color: Constants.mainColorWhite),
        ),
        leading: IconButton(
            color: Colors.white,
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 20,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.02,
              bottom: MediaQuery.of(context).size.height * 0.01,
              left: MediaQuery.of(context).size.height * 0.01,
              right: MediaQuery.of(context).size.height * 0.01,
            ),
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.0002,
              bottom: MediaQuery.of(context).size.height * 0.0002,
            ),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.all(08),
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01,
                    left: MediaQuery.of(context).size.height * 0.07,
                    right: MediaQuery.of(context).size.height * 0.07,
                    bottom: MediaQuery.of(context).size.height * 0.01,
                  ),
                  decoration: BoxDecoration(
                    color: Constants.bluecolor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Text(
                    "Basic",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Constants.mainColorWhite),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(08),
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01,
                    left: MediaQuery.of(context).size.height * 0.07,
                    right: MediaQuery.of(context).size.height * 0.05,
                    bottom: MediaQuery.of(context).size.height * 0.01,
                  ),
                  decoration: BoxDecoration(
                    color: Constants.bluecolor,
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
                  child: Text(
                    "Premium",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Constants.mainColorWhite),
                  ),
                ),
              ],
            ),
          ),
          healthtest(context, 'Apple Health'),
          healthtest(context, 'Fibit'),
          healthtest(context, 'Withings'),
          healthtest(context, 'iHealth'),
          healthtest(context, 'MiBand'),
          healthtest(context, 'Cerner'),
        ],
      ),
    );
  }
}

Widget healthtest(context, title) {
  return Container(
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.03,
      bottom: MediaQuery.of(context).size.height * 0.01,
      left: MediaQuery.of(context).size.height * 0.01,
      right: MediaQuery.of(context).size.height * 0.01,
    ),
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.015,
      left: MediaQuery.of(context).size.height * 0.01,
      right: MediaQuery.of(context).size.height * 0.01,
      bottom: MediaQuery.of(context).size.height * 0.01,
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: ListTile(
      leading: CircleAvatar(
          child: Icon(
        Icons.health_and_safety,
        color: Constants.mainColorWhite,
      )),
      horizontalTitleGap: 10,
      title: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Constants.grey, fontSize: 18),
      ),
      trailing: Icon(
        Icons.task_alt_rounded,
        color: Constants.bluecolor,
      ),
    ),
  );
}
