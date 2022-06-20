import 'package:flutter/material.dart';
import 'package:medical_app/Screens/Book_Doctors_Appoinment/Doctors.dart';

import '../../Constants/constants.dart';

class Hospital extends StatefulWidget {
  const Hospital({Key? key}) : super(key: key);

  @override
  State<Hospital> createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.mainColorWhite,
        appBar: AppBar(
          backgroundColor: Constants.mainColor1,
          title: Text(
            "Hospital",
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
              decoration: BoxDecoration(
                color: Constants.lightColor,
                borderRadius: BorderRadius.all(
                    Radius.circular(MediaQuery.of(context).size.width * 0.010)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.06,
                left: MediaQuery.of(context).size.width * 0.02,
                right: MediaQuery.of(context).size.width * 0.02,
              ),
              child: TextField(
                autofocus: false,
                style: TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                decoration: InputDecoration(
                  filled: true,
                  suffixIcon: Icon(Icons.search),
                  fillColor: Colors.white,
                  hintText: 'Search Location',
                  contentPadding: const EdgeInsets.only(
                      left: 14.0, bottom: 12.0, top: 12.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(29),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                ),
              ),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Doctors()));
                },
                child: Hospitallocation(context, 'Healer Hospital')),
            Hospitallocation(context, 'Mamji Hospital'),
            Hospitallocation(context, 'Manji Hospital'),
            Hospitallocation(context, 'Dow Hospital'),
            Hospitallocation(context, 'Healer Hospital'),
            Hospitallocation(context, 'Mamji Hospital'),
          ],
        ));
  }
}

Widget Hospitallocation(context, title) {
  return Container(
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.03,
      bottom: MediaQuery.of(context).size.height * 0.01,
      left: MediaQuery.of(context).size.height * 0.01,
      right: MediaQuery.of(context).size.height * 0.01,
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
              'assets/doctor2.jpg',
            ),
            //     child: Icon(
            //   Icons.health_and_safety,
            //   size: 25,
            //   color: Constants.mainColorWhite,
            // )
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

Widget slideable() {
  return slideable();
}
