import 'package:flutter/material.dart';
import 'package:medical_app/Constants/constants.dart';

class MyReports extends StatelessWidget {
  const MyReports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.mainColor,
        title: Text('Uploads Reports'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(onTap: () {}, child: buttonreport(context, "Fill a Form")),
            InkWell(onTap: () {}, child: buttonreport(context, "Upload Image")),
            InkWell(
                onTap: () {}, child: buttonreport(context, "Take a Picture"))
          ],
        ),
      ),
    );
  }
}

Widget buttonreport(context, buttontext) {
  return Container(
    padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.width * 0.08,
        left: MediaQuery.of(context).size.width * 0.05,
        bottom: MediaQuery.of(context).size.width * 0.05,
        right: MediaQuery.of(context).size.width * 0.05),
    margin: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.04),
    decoration: BoxDecoration(
      color: Constants.lightColor,
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
    width: MediaQuery.of(context).size.width * 0.95,
    child: Center(
      child: Text(buttontext,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.04,
              color: Constants.mainColor,
              fontWeight: FontWeight.bold)),
    ),
  );
}
