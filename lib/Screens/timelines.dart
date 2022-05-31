import 'package:flutter/material.dart';

import '../Constants/constants.dart';

class Timelines extends StatefulWidget {
  const Timelines({Key? key}) : super(key: key);

  @override
  State<Timelines> createState() => _TimelinesState();
}

class _TimelinesState extends State<Timelines> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.mainColorWhite,
        appBar: AppBar(
          backgroundColor: Constants.mainColorWhite,
          title: Text(
            "Timelines",
            style: TextStyle(color: Constants.blackcolor),
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
        body: Container());
  }
}
