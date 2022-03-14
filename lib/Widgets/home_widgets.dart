import 'package:flutter/material.dart';
import 'package:medical_app/Constants/constants.dart';

Widget containericon(context, iconname, icontext, backgroundcolor) {
  return Container(
    padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.width * 0.08,
        left: MediaQuery.of(context).size.width * 0.05,
        bottom: MediaQuery.of(context).size.width * 0.05,
        right: MediaQuery.of(context).size.width * 0.05),
    margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.005),
    decoration: BoxDecoration(
        color: backgroundcolor,
        borderRadius: BorderRadius.all(
            Radius.circular(MediaQuery.of(context).size.width * 0.03))),
    width: MediaQuery.of(context).size.width * 0.45,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          iconname,
          size: MediaQuery.of(context).size.width * 0.1,
          color: Constants.mainColor,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.width * 0.04,
          ),
          child: Text(
            icontext,
            style: TextStyle(
                color: Constants.mainColor,
                fontSize: MediaQuery.of(context).size.width * 0.03),
          ),
        )
      ],
    ),
  );
}
