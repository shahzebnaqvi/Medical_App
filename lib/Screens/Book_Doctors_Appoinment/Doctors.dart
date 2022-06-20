import 'package:flutter/material.dart';
import 'package:medical_app/Screens/Book_Doctors_Appoinment/Doctors_Profile.dart';

import '../../Constants/constants.dart';

class Doctors extends StatefulWidget {
  const Doctors({Key? key}) : super(key: key);

  @override
  State<Doctors> createState() => _HospitalState();
}

class _HospitalState extends State<Doctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.mainColorWhite,
        appBar: AppBar(
          backgroundColor: Constants.mainColor1,
          title: Text(
            "Doctors",
            style: TextStyle(color: Constants.mainColorWhite),
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.search,
                    size: 26.0,
                  ),
                )),
          ],
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
                child: Hospitallocation(context, 'John Smith')),
            Hospitallocation(context, 'Hamlet pham'),
            Hospitallocation(context, 'Manji Doctors'),
            Hospitallocation(context, 'Mary Hihi'),
            Hospitallocation(context, 'Johny Doe'),
            Hospitallocation(context, 'May Hampton'),
          ],
        ));
  }
}

Widget Hospitallocation(context, title) {
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
              'assets/Sign_up.jpg',
            ),
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Constants.blackcolor,
              fontSize: 18),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Cardiologist",
              style:
                  TextStyle(color: Constants.grey, fontWeight: FontWeight.w500),
            ),
            Text("0.8 km away"),
          ],
        ),
        trailing: Wrap(
          spacing: 2,
          children: [
            Icon(
              Icons.star,
              color: Constants.ubl,
              size: 18,
            ),
            Text(
              "5.0",
              style: TextStyle(
                  color: Constants.ubl,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ],
        )),
  );
}
