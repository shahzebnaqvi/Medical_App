import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/Constants/constants.dart';
import 'package:medical_app/Controllers/bmi_controller.dart';
import 'package:medical_app/Screens/additionaltools/additionalsubscreens/bmi_result.dart';

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
      bmiController.height.value = heightcm;
      // print(bmiController.height.value);
      // print(heightcm.runtimeType);
      // print(bmiController.height.value.runtimeType);
    });
  }

  void initState() {
    super.initState();
    bmiController.gender.value = 0;
    bmiController.height.value = "";
    bmiController.weight.value = 0;
    bmiController.age.value = 0;
    heightcm = "";
    _currentSliderValue = 20;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        backgroundColor: Constants.mainColor,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {});
                    bmiController.gender.value = 1;
                    print(bmiController.gender.value);
                  },
                  child: bmiController.gender.value == 1
                      ? containerhalf(context, Icons.male_rounded, "Male",
                          Constants.lightColor, Constants.mainColor)
                      : containerhalf(context, Icons.male_rounded, "Male",
                          Constants.mainColor, Constants.lightColor),
                    
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      bmiController.gender.value = 2;
                    });
                    print(bmiController.gender.value);
                  },
                  child: bmiController.gender.value == 2
                      ? containerhalf(context, Icons.female_rounded, "Female",
                          Constants.lightColor, Constants.mainColor)
                      : containerhalf(context, Icons.female_rounded, "Female",
                          Constants.mainColor, Constants.lightColor),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: backcolorcon,
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
            width: MediaQuery.of(context).size.width * 0.9,
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
                  decoration: BoxDecoration(
                    color: backcolorcon,
                    borderRadius: BorderRadius.all(Radius.circular(
                        MediaQuery.of(context).size.width * 0.03)),
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
                    MediaQuery.of(context).size.width * 0.03,
                  ),
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: Column(
                    children: [
                      Text(
                        "Weight",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
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
                            onLongPress: () {
                              bmiController.decrementlong("1");
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
                            onLongPress: () {
                              bmiController.incrementlong("1");
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
                  decoration: BoxDecoration(
                    color: backcolorcon,
                    borderRadius: BorderRadius.all(Radius.circular(
                        MediaQuery.of(context).size.width * 0.03)),
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
                    MediaQuery.of(context).size.width * 0.03,
                  ),
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: Column(
                    children: [
                      Text(
                        "Age",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
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
                            onLongPress: () {
                              bmiController.decrementlong("2");
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
                            onLongPress: () {
                              bmiController.incrementlong("2");
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
                 // padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.15),
                margin:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                width: MediaQuery.of(context).size.width * 0.95,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Constants.mainColor),
                  child: Text("Calculate Your BMI",),
                  onPressed: () {
                    print("dssddssdsdsdsdsdddddddddd");
                    print("weoght");
                    print((bmiController.weight.value).runtimeType);
                    print("age");

                    print((bmiController.age.value.runtimeType));
                    print("gender");

                    print((bmiController.gender.value).runtimeType);
                    print("height");

                    print(bmiController.height.value);
                    if (bmiController.height.value == "" ||
                        bmiController.weight.value == 0 ||
                        bmiController.age.value == 0 ||
                        bmiController.gender.value == 0) {
                      //   bmiController.height.value = "";
                      // bmiController.weight.value = 0;
                      // bmiController.age.value = 0;

                      print(bmiController.height.value);
                      var snackBar =
                          SnackBar(content: Text('Enter the values First'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Bmi_Result()),
                      );
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
