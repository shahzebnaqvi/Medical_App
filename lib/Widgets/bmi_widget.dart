import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/Controllers/bmi_controller.dart';

import '../Screens/additionaltools/bmi.dart';

Widget containerhalf(context, iconcont, name, fontcolor1, backcolor) {
  return Container(
    decoration: BoxDecoration(
      color: backcolor,
      borderRadius: BorderRadius.all(
          Radius.circular(MediaQuery.of(context).size.width * 0.03)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    padding: EdgeInsets.all(
      MediaQuery.of(context).size.width * 0.04,
    ),
    width: MediaQuery.of(context).size.width * 0.45,
    child: Column(
      children: [
        Icon(iconcont,
            color: fontcolor1, size: MediaQuery.of(context).size.width * 0.3),
        Text(
          name,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.06,
              color: fontcolor1),
        )
      ],
    ),
  );
}
