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
