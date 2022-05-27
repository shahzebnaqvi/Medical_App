import 'package:flutter/material.dart';
import 'package:medical_app/Screens/auth/login.dart';

import '../../Constants/constants.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String _dropDownValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.mainColorWhite,
      appBar: AppBar(
        title: Text(
          "My profile",
          style: TextStyle(color: Constants.blackcolor),
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
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.08,
          left: MediaQuery.of(context).size.height * 0.02,
          right: MediaQuery.of(context).size.height * 0.02,
          bottom: MediaQuery.of(context).size.height * 0.02,
        ),
        child: ListView(
          children: [
            TextField(
              cursorColor: Constants.blackcolor,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                labelText: "Fullname",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            TextField(
              cursorColor: Constants.blackcolor,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                labelText: "Birthday",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),

            Container(
              padding: EdgeInsets.all(05),
              decoration: BoxDecoration(
                  border: Border.all(color: Constants.grey),
                  borderRadius: BorderRadius.circular(25)),
              width: MediaQuery.of(context).size.width * 0.3,
              child: DropdownButton<String>(
                hint: _dropDownValue == ""
                    ? Text('Gender')
                    : Text(
                        _dropDownValue,
                        style: TextStyle(color: Constants.mainColor),
                      ), // Not necessary for Option 1

                items: <String>['Male', 'Female'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _dropDownValue = value!;
                  });
                },
              ),
            ),
            // TextField(
            //     cursorColor: Constants.blackcolor,
            //     decoration: InputDecoration(
            //       border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(25)),
            //       labelText: "Gender",
            //     )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            TextField(
              cursorColor: Constants.blackcolor,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                labelText: "Weight",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            TextField(
              cursorColor: Constants.blackcolor,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                labelText: "Height",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.03,
                right: MediaQuery.of(context).size.height * 0.01,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    primary: Constants.mainColor,
                    minimumSize: Size(
                        20,
                        MediaQuery.of(context).size.height *
                            0.06) // put the width and height you want
                    ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  "SUBMIT",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
