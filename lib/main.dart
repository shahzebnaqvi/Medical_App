import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'Screens/Book_Doctors_Appoinment/My_Apponiments.dart';

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
      home: MyAppointments(),
    );
  }
}
