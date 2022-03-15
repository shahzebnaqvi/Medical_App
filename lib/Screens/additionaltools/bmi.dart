import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/Constants/constants.dart';
import 'package:medical_app/Controllers/bmi_controller.dart';

import '../../Widgets/bmi_widget.dart';

class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  _BmiState createState() => _BmiState();
}

double heightcm1 = 0;
String heightcm = "";
Color backcolor = Colors.black;
Color backcolorcon = Colors.white;

Color coloricon = Constants.mainColor;
Color fontcolor = Constants.mainColor;
double _currentSliderValue = 20;
final genderController = TextEditingController();
final heightController = TextEditingController();
final weightController = TextEditingController();
final ageController = TextEditingController();
final bmiController = Get.put(BmiController());

class _BmiState extends State<Bmi> {
  height() {
    setState(() {
      heightcm1 = _currentSliderValue;
      heightcm = num.parse(heightcm1.toString()).toStringAsFixed(1);
      // bmiController.height = heightcm.runtimeType;
      // bmiController.height.value = heightcm;
      print(heightcm1.runtimeType);
      print(bmiController.height.value.runtimeType);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Constants.mainColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                containerhalf(context, Icons.male_rounded, "Male"),
                containerhalf(context, Icons.female_rounded, "Female"),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            color: backcolorcon,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    bottom: MediaQuery.of(context).size.height * 0.01,
                  ),
                  child: Text(
                    "Height",
                    style: TextStyle(color: fontcolor),
                  ),
                ),
                Text(
                  "$heightcm",
                  style: TextStyle(fontSize: 40, color: fontcolor),
                ),
                Slider(
                  value: _currentSliderValue,
                  min: 10,
                  max: 1000,
                  activeColor: Constants.mainColor,
                  thumbColor: Constants.mainColor,
                  divisions: 1000,
                  label: _currentSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                      height();
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(
                    MediaQuery.of(context).size.width * 0.04,
                  ),
                  width: MediaQuery.of(context).size.width * 0.45,
                  color: backcolorcon,
                  child: Column(
                    children: [
                      Text(
                        "Weight",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.05,
                            color: fontcolor),
                      ),
                      Obx(() => Text(
                            '${bmiController.weight.value}',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.12,
                                color: fontcolor),
                          )),
                      // Text(
                      //   "${widget.counter}",
                      //   style: TextStyle(
                      //       fontSize: MediaQuery.of(context).size.width * 0.12,
                      //       color: fontcolor),
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              bmiController.decrement("1");
                            },
                            child: Icon(
                              Icons.remove_circle,
                              color: fontcolor,
                              size: MediaQuery.of(context).size.width * 0.09,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              bmiController.increment("1");
                            },
                            child: Icon(
                              Icons.add_circle,
                              color: fontcolor,
                              size: MediaQuery.of(context).size.width * 0.09,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(
                    MediaQuery.of(context).size.width * 0.04,
                  ),
                  width: MediaQuery.of(context).size.width * 0.45,
                  color: backcolorcon,
                  child: Column(
                    children: [
                      Text(
                        "Age",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.05,
                            color: fontcolor),
                      ),
                      Obx(() => Text(
                            '${bmiController.age.value}',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.12,
                                color: fontcolor),
                          )),
                      //         GetX<BmiController>(
                      //           init: BmiController(),
                      //           builder: (_c) =>
                      //               Text('GetX: ${bmiController.weight.value}'),
                      //         ),
                      // Text(
                      //   "${widget.counter}",
                      //   style: TextStyle(
                      //       fontSize: MediaQuery.of(context).size.width * 0.12,
                      //       color: fontcolor),
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              bmiController.decrement("2");
                            },
                            child: Icon(
                              Icons.remove_circle,
                              color: fontcolor,
                              size: MediaQuery.of(context).size.width * 0.09,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              bmiController.increment("2");
                            },
                            child: Icon(
                              Icons.add_circle,
                              color: fontcolor,
                              size: MediaQuery.of(context).size.width * 0.09,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                // Containerhalf1(
                //     heading1: "Weight",
                //     counter: bmiController.weight.value,
                //     indexnum: "1",
                //     Onincrement: () => {}),
                // Containerhalf1(
                //     heading1: "Age",
                //     counter: bmiController.weight.value,
                //     indexnum: "2",
                //     Onincrement: () {}),
              ],
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
                  child: Text("Calculate Your BMI"),
                  onPressed: () {},
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
