import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

import '../../Constants/constants.dart';
class AddPillReminder extends StatefulWidget {
  const AddPillReminder({Key? key}) : super(key: key);

  @override
  State<AddPillReminder> createState() => _AddPillReminderState();
}

class _AddPillReminderState extends State<AddPillReminder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Constants.mainColorWhite,
      appBar: AppBar(
          backgroundColor: Constants.mainColor1,
          title: Text(
            "Add Pill Remainder",
            style: TextStyle(color: Constants.mainColorWhite),
          )),
          body: Container(),
    );
  }
}