import 'package:flutter/material.dart';

import '../../Constants/constants.dart';

class PillRemainder extends StatefulWidget {
  const PillRemainder({Key? key}) : super(key: key);

  @override
  State<PillRemainder> createState() => _PillRemainderState();
}

class _PillRemainderState extends State<PillRemainder> {
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
        Container()
      ]),
    );
  }
}
