import 'package:flutter/material.dart';
import 'package:medical_app/Screens/Book_Doctors_Appoinment/Doctors_Profile.dart';

import '../../Constants/constants.dart';

class MyAppointments extends StatefulWidget {
  const MyAppointments({Key? key}) : super(key: key);

  @override
  State<MyAppointments> createState() => _HospitalState();
}

class _HospitalState extends State<MyAppointments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.mainColorWhite,
        appBar: AppBar(
          backgroundColor: Constants.mainColor1,
          title: Text(
            "MyAppointments",
            style: TextStyle(color: Constants.mainColorWhite),
          ),
          // actions: [
          //   Padding(
          //       padding: EdgeInsets.only(right: 20.0),
          //       child: GestureDetector(
          //         onTap: () {},
          //         child: Icon(
          //           Icons.search,
          //           size: 26.0,
          //         ),
          //       )),
          // ],
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
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Doctors_Profiles()));
                },
                child: Appointment(
                    context, 'Appointment', 'Accepted', 'Dr.Ethel Howard')),
            Appointment(context, 'Appointment', 'Progress ', 'Dr.John Ray'),
            Appointment(context, 'Appointment ', 'Rejected', 'Dr.Ethel Howard'),
            Appointment(context, 'Appointment', 'Accepted', 'Dr.John Ray'),
            Appointment(context, 'Appointment', 'Unconfirmed', 'Dr.John Ray'),
            Appointment(context, 'Appointment', 'Accepted', 'Dr.Ethel Howard'),
          ],
        ));
  }
}

Widget Appointment(context, title, title1, doctor) {
  return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.03,
        bottom: MediaQuery.of(context).size.height * 0.01,
        left: MediaQuery.of(context).size.height * 0.02,
        right: MediaQuery.of(context).size.height * 0.02,
      ),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.015,
        left: MediaQuery.of(context).size.height * 0.01,
        right: MediaQuery.of(context).size.height * 0.01,
        bottom: MediaQuery.of(context).size.height * 0.01,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        leading: ClipOval(
          child: CircleAvatar(
            radius: 25,
            child: Image.asset(
              'assets/apponitment.jpg',
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.all(3),
          child: Row(
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Constants.grey, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              Text(
                title1,
                style: TextStyle(
                    color: Constants.grey, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(3),
              child: Text(
                doctor,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Constants.blackcolor,
                    fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Text(
                "08:00PM - 08:30PM",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Constants.grey,
                ),
              ),
            ),
          ],
        ),
      ));
}
