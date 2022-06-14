import 'package:flutter/material.dart';
import 'package:medical_app/Screens/Book_Doctors_Appoinment/Hospital.dart';
import 'package:medical_app/Screens/Health%20&%20Fitness%20Goal/test_indicators.dart';
import 'package:medical_app/Screens/additionaltools/bp.dart';
import 'package:medical_app/Screens/auth/login.dart';
import 'package:flutter/services.dart';
import 'package:medical_app/Screens/auth/myprofile.dart';
import 'package:medical_app/Screens/auth/signup.dart';
import 'package:medical_app/Screens/bottombar.dart';
import 'package:medical_app/Screens/home.dart';

import 'package:medical_app/testing.dart';

import 'Screens/auth/recipes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Hospital(),
    );
  }
}
