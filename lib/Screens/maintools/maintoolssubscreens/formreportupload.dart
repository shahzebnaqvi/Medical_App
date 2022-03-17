import 'package:flutter/material.dart';
import 'package:medical_app/Constants/constants.dart';

class FormReportUpload extends StatelessWidget {
  @override
  TextEditingController hospitalname = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController disease = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.08,
                left: MediaQuery.of(context).size.width * 0.05,
                bottom: MediaQuery.of(context).size.width * 0.05,
                right: MediaQuery.of(context).size.width * 0.05),
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.04),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Upload Report",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.07,
                        color: Constants.mainColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextField(
                    controller: hospitalname,
                    decoration: InputDecoration(
                      labelText: 'Enter Name of Hospital',
                      hintText: 'Name of Hospital',
                      hintStyle: TextStyle(color: Constants.mainColor),
                      labelStyle: TextStyle(color: Constants.mainColor),
                    )),
                TextField(
                    controller: address,
                    decoration: InputDecoration(
                      labelText: 'Enter Address',
                      hintText: 'Address',
                      hintStyle: TextStyle(color: Constants.mainColor),
                      labelStyle: TextStyle(color: Constants.mainColor),
                    )),
                TextField(
                    controller: date,
                    decoration: InputDecoration(
                      labelText: 'Date',
                      hintText: 'Enter Date',
                      hintStyle: TextStyle(color: Constants.mainColor),
                      labelStyle: TextStyle(color: Constants.mainColor),
                    )),
                TextField(
                    controller: disease,
                    decoration: InputDecoration(
                      labelText: 'Enter Disease',
                      hintText: 'Disease',
                      hintStyle: TextStyle(color: Constants.mainColor),
                      labelStyle: TextStyle(color: Constants.mainColor),
                    )),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(primary: Constants.mainColor),
                    onPressed: () {},
                    child: Text("Upload"))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
