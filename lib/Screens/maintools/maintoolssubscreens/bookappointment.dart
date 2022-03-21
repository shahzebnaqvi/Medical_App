import 'package:flutter/material.dart';
import 'package:medical_app/Constants/constants.dart';

class BookApppointment extends StatefulWidget {
  const BookApppointment({Key? key}) : super(key: key);

  @override
  State<BookApppointment> createState() => _BookApppointmentState();
}

class _BookApppointmentState extends State<BookApppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.mainColor,
        title: Text('Book Appointments'),
      ),
      body: Center(
          child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.05,
              ),
              child: Row(
                children: [
                  contdate(context, "29", "Sun", Colors.blue, Colors.white)
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

Widget contdate(context, date, day, colorcolor, fontcolor) {
  return Container(
    decoration: BoxDecoration(
      color: colorcolor,
      borderRadius: BorderRadius.all(
          Radius.circular(MediaQuery.of(context).size.width * 0.05)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.05,
        right: MediaQuery.of(context).size.width * 0.05,
        left: MediaQuery.of(context).size.width * 0.05,
        bottom: MediaQuery.of(context).size.height * 0.05),
    child: Column(
      children: [
        Text(
          day,
          style: TextStyle(
              color: fontcolor,
              fontSize: MediaQuery.of(context).size.width * 0.05),
        ),
        Text(date,
            style: TextStyle(
                color: fontcolor,
                fontSize: MediaQuery.of(context).size.width * 0.05)),
      ],
    ),
  );
}
