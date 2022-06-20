import 'package:flutter/material.dart';

import 'package:medical_app/Screens/Book_Doctors_Appoinment/My_Apponiments.dart';

import '../../Constants/constants.dart';
import '../maintools/maintoolssubscreens/bookappointment.dart';

class Book_Appointment extends StatefulWidget {
  const Book_Appointment({Key? key}) : super(key: key);

  @override
  State<Book_Appointment> createState() => _HospitalState();
}

class _HospitalState extends State<Book_Appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.mainColorWhite,
        appBar: AppBar(
          backgroundColor: Constants.ubl,
          title: Text(
            "Book Appointment",
            style: TextStyle(color: Constants.mainColorWhite),
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
        body: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.20,
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.025,
                right: MediaQuery.of(context).size.height * 0.025,
                top: MediaQuery.of(context).size.height * 0.025,
              ),
              child: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/doctor2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Center(
              child: Text(
                "Alexander Wolfe",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            //
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
                            ? conttime(context, "29", "12:20PM",
                                Constants.mainColor1, Constants.lightColor)
                            : conttime(context, "29", "12:20AM",
                                Constants.lightColor, Constants.mainColor1)),
                    InkWell(
                        onTap: () {
                          setState(() {});
                          appointmentController.time.value = 2;
                          print(appointmentController.time.value);
                        },
                        child: appointmentController.time.value == 2
                            ? conttime(context, "29", "03:20PM",
                                Constants.mainColor1, Constants.lightColor)
                            : conttime(context, "29", "12:20PM",
                                Constants.lightColor, Constants.mainColor1)),
                    InkWell(
                        onTap: () {
                          setState(() {});
                          appointmentController.time.value = 3;
                          print(appointmentController.time.value);
                        },
                        child: appointmentController.time.value == 3
                            ? conttime(context, "29", "03:20PM",
                                Constants.mainColor1, Constants.lightColor)
                            : conttime(context, "29", "03:20AM",
                                Constants.lightColor, Constants.mainColor1)),
                    InkWell(
                        onTap: () {
                          setState(() {});
                          appointmentController.time.value = 4;
                          print(appointmentController.time.value);
                        },
                        child: appointmentController.time.value == 4
                            ? conttime(context, "29", "12:20AM",
                                Constants.mainColor1, Constants.lightColor)
                            : conttime(context, "29", "12:20AM",
                                Constants.lightColor, Constants.mainColor1)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.03,
                bottom: MediaQuery.of(context).size.height * 0.01,
                left: MediaQuery.of(context).size.height * 0.03,
                right: MediaQuery.of(context).size.height * 0.03,
              ),
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.015,
                left: MediaQuery.of(context).size.height * 0.08,
                right: MediaQuery.of(context).size.height * 0.06,
                bottom: MediaQuery.of(context).size.height * 0.02,
              ),
              decoration: BoxDecoration(
                color: Constants.mainColor1,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 8,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyAppointments()));
                  },
                  child: Text(
                    "BOOK NOW",
                    style: TextStyle(
                        fontSize: 18,
                        color: Constants.mainColorWhite,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
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
















// // Widget Profile(context, icon, title) {
// //   return Container(
// //       margin: EdgeInsets.only(
// //         top: MediaQuery.of(context).size.height * 0.03,
// //         bottom: MediaQuery.of(context).size.height * 0.01,
// //         left: MediaQuery.of(context).size.height * 0.02,
// //         right: MediaQuery.of(context).size.height * 0.02,
// //       ),
// //       padding: EdgeInsets.only(
// //         top: MediaQuery.of(context).size.height * 0.015,
// //         left: MediaQuery.of(context).size.height * 0.01,
// //         right: MediaQuery.of(context).size.height * 0.01,
// //         bottom: MediaQuery.of(context).size.height * 0.01,
// //       ),
// //       decoration: BoxDecoration(
// //         color: Colors.white,
// //         borderRadius: BorderRadius.circular(10),
// //         boxShadow: [
// //           BoxShadow(
// //             color: Colors.grey.withOpacity(0.2),
// //             spreadRadius: 2,
// //             blurRadius: 7,
// //             offset: Offset(0, 3),
// //           ),
// //         ],
// //       ),
// //       child: ListTile(
// //         leading: ClipOval(
// //           child: CircleAvatar(
// //             backgroundColor: Constants.mainColorWhite,
// //             radius: 25,
// //             child: Icon(
// //               icon,
// //               color: Constants.bluecolor,
// //             ),
// //           ),
// //         ),
// //         title: Text(
// //           title,
// //           style: TextStyle(
// //               fontWeight: FontWeight.w500,
// //               color: Constants.blackcolor,
// //               fontSize: 18),
// //         ),
// //         trailing: Icon(Icons.arrow_forward_ios),
// //       ));
// }
