import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/Constants/constants.dart';
import 'package:medical_app/Controllers/bmi_controller.dart';

class Bmi_Result extends StatefulWidget {
  const Bmi_Result({Key? key}) : super(key: key);

  @override
  State<Bmi_Result> createState() => _Bmi_ResultState();
}

class _Bmi_ResultState extends State<Bmi_Result> {
  final bmiController = Get.put(BmiController());

  void initState() {
    super.initState();
    bmiController.bmiresult();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        backgroundColor: Constants.mainColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.08),
            child: Text(
              "Your Result",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  color: Constants.mainColor),
            ),
          ),
          Container(
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
              padding: EdgeInsets.all(
                MediaQuery.of(context).size.width * 0.04,
              ),
              width: MediaQuery.of(context).size.width * 0.95,
              child: Column(children: [Text("ss"), Text("ss"), Text("ss")])),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                width: MediaQuery.of(context).size.width * 0.95,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Constants.mainColor),
                  child: Text("Re-Calculate"),
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
