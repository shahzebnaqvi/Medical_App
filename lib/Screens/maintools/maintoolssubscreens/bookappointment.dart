import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/Constants/constants.dart';
import 'package:medical_app/Controllers/appointment_controller.dart';

class BookApppointment extends StatefulWidget {
  const BookApppointment({Key? key}) : super(key: key);

  @override
  State<BookApppointment> createState() => _BookApppointmentState();
}

final appointmentController = Get.put(AppointmentController());

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
                top: MediaQuery.of(context).size.height * 0.03,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {});
                          appointmentController.date.value = 1;
                          print(appointmentController.date.value);
                        },
                        child: appointmentController.date.value == 1
                            ? contdate(context, "29", "Sun",
                                Constants.mainColor, Constants.lightColor)
                            : contdate(context, "29", "Sun",
                                Constants.lightColor, Constants.mainColor)),
                    InkWell(
                        onTap: () {
                          setState(() {});
                          appointmentController.date.value = 2;
                          print(appointmentController.date.value);
                        },
                        child: appointmentController.date.value == 2
                            ? contdate(context, "29", "Sun",
                                Constants.mainColor, Constants.lightColor)
                            : contdate(context, "29", "Sun",
                                Constants.lightColor, Constants.mainColor)),
                    InkWell(
                        onTap: () {
                          setState(() {});
                          appointmentController.date.value = 3;
                          print(appointmentController.date.value);
                        },
                        child: appointmentController.date.value == 3
                            ? contdate(context, "29", "Sun",
                                Constants.mainColor, Constants.lightColor)
                            : contdate(context, "29", "Sun",
                                Constants.lightColor, Constants.mainColor)),
                    InkWell(
                        onTap: () {
                          setState(() {});
                          appointmentController.date.value = 4;
                          print(appointmentController.date.value);
                        },
                        child: appointmentController.date.value == 4
                            ? contdate(context, "29", "Sun",
                                Constants.mainColor, Constants.lightColor)
                            : contdate(context, "29", "Sun",
                                Constants.lightColor, Constants.mainColor)),
                    InkWell(
                        onTap: () {
                          setState(() {});
                          appointmentController.date.value = 5;
                          print(appointmentController.date.value);
                        },
                        child: appointmentController.date.value == 5
                            ? contdate(context, "29", "Sun",
                                Constants.mainColor, Constants.lightColor)
                            : contdate(context, "29", "Sun",
                                Constants.lightColor, Constants.mainColor)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.03,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {});
                          appointmentController.time.value = 1;
                          print(appointmentController.time.value);
                        },
                        child: appointmentController.time.value == 1
                            ? conttime(context, "29", "12:20 -03:20",
                                Constants.mainColor, Constants.lightColor)
                            : conttime(context, "29", "12:20 -03:20",
                                Constants.lightColor, Constants.mainColor)),
                    InkWell(
                        onTap: () {
                          setState(() {});
                          appointmentController.time.value = 2;
                          print(appointmentController.time.value);
                        },
                        child: appointmentController.time.value == 2
                            ? conttime(context, "29", "12:20 -03:20",
                                Constants.mainColor, Constants.lightColor)
                            : conttime(context, "29", "12:20 -03:20",
                                Constants.lightColor, Constants.mainColor)),
                    InkWell(
                        onTap: () {
                          setState(() {});
                          appointmentController.time.value = 3;
                          print(appointmentController.time.value);
                        },
                        child: appointmentController.time.value == 3
                            ? conttime(context, "29", "12:20 -03:20",
                                Constants.mainColor, Constants.lightColor)
                            : conttime(context, "29", "12:20 -03:20",
                                Constants.lightColor, Constants.mainColor)),
                    InkWell(
                        onTap: () {
                          setState(() {});
                          appointmentController.time.value = 4;
                          print(appointmentController.time.value);
                        },
                        child: appointmentController.time.value == 4
                            ? conttime(context, "29", "12:20 -03 :20",
                                Constants.mainColor, Constants.lightColor)
                            : conttime(context, "29", "12:20 -03 :20",
                                Constants.lightColor, Constants.mainColor)),
                    InkWell(
                        onTap: () {
                          setState(() {});
                          appointmentController.time.value = 5;
                          print(appointmentController.time.value);
                        },
                        child: appointmentController.time.value == 5
                            ? conttime(context, "29", "12:20 -03 :20",
                                Constants.mainColor, Constants.lightColor)
                            : conttime(context, "29", "12:20 -03 :20",
                                Constants.lightColor, Constants.mainColor)),
                  ],
                ),
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
        top: MediaQuery.of(context).size.height * 0.04,
        right: MediaQuery.of(context).size.width * 0.06,
        left: MediaQuery.of(context).size.width * 0.06,
        bottom: MediaQuery.of(context).size.height * 0.04),
    margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
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
                fontSize: MediaQuery.of(context).size.width * 0.08)),
      ],
    ),
  );
}

Widget conttime(context, date, day, colorcolor, fontcolor) {
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
        top: MediaQuery.of(context).size.height * 0.04,
        right: MediaQuery.of(context).size.width * 0.06,
        left: MediaQuery.of(context).size.width * 0.06,
        bottom: MediaQuery.of(context).size.height * 0.04),
    margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
    child: Row(
      children: [
        Icon(
          Icons.sunny,
          color: fontcolor,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.02,
        ),
        Text(
          day,
          style: TextStyle(
              color: fontcolor,
              fontSize: MediaQuery.of(context).size.width * 0.05),
        ),
      ],
    ),
  );
}
