import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/Controllers/bmi_controller.dart';

import '../Screens/additionaltools/bmi.dart';

Widget containerhalf(context, iconcont, name) {
  return Container(
    padding: EdgeInsets.all(
      MediaQuery.of(context).size.width * 0.04,
    ),
    width: MediaQuery.of(context).size.width * 0.45,
    color: backcolorcon,
    child: Column(
      children: [
        Icon(iconcont,
            color: coloricon, size: MediaQuery.of(context).size.width * 0.3),
        Text(
          name,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.06,
              color: fontcolor),
        )
      ],
    ),
  );
}
