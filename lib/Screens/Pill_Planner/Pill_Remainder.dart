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
      body: Container(),
    );
  }
}
