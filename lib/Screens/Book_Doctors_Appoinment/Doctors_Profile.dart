import 'package:flutter/material.dart';

import '../../Constants/constants.dart';

class Doctors_Profiles extends StatefulWidget {
  const Doctors_Profiles({Key? key}) : super(key: key);

  @override
  State<Doctors_Profiles> createState() => _HospitalState();
}

class _HospitalState extends State<Doctors_Profiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.mainColorWhite,
        appBar: AppBar(
          backgroundColor: Constants.ubl,
          title: Text(
            "Doctors Profiles",
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
              height: MediaQuery.of(context).size.height * 0.25,
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.025,
                right: MediaQuery.of(context).size.height * 0.025,
                top: MediaQuery.of(context).size.height * 0.030,
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/84890859?v=4'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Center(
              child: Text(
                "Alexander Wolfe",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Center(
                child: Text(
              "Cardiologists",
              style: TextStyle(color: Constants.grey),
            )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Constants.bluecolor,
                  size: 18,
                ),
                Text(
                  "5.0",
                  style: TextStyle(color: Constants.grey),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Text("(234 reviewer)", style: TextStyle(color: Constants.grey))
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.03,
                bottom: MediaQuery.of(context).size.height * 0.01,
                left: MediaQuery.of(context).size.height * 0.05,
                right: MediaQuery.of(context).size.height * 0.05,
              ),
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.015,
                left: MediaQuery.of(context).size.height * 0.08,
                right: MediaQuery.of(context).size.height * 0.06,
                bottom: MediaQuery.of(context).size.height * 0.02,
              ),
              decoration: BoxDecoration(
                color: Constants.bluecolor,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Text(
                "BOOK APPOINTMENT",
                style: TextStyle(fontSize: 18, color: Constants.mainColorWhite),
              ),
            ),
            Container(),
            Profile(context, (Icons.person_add), 'Personal Information'),
            Profile(context, (Icons.work), 'Working Adress'),
            Profile(context, (Icons.star), 'Reviewers'),
          ],
        ));
  }
}

Widget Profile(context, icon, title) {
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
            backgroundColor: Constants.mainColorWhite,
            radius: 25,
            child: Icon(
              icon,
              color: Constants.bluecolor,
            ),
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Constants.blackcolor,
              fontSize: 18),
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ));
}
