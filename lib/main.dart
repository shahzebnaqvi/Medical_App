import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:medical_app/Screens/maintools/appointments.dart';
import 'package:medical_app/Screens/maintools/maintoolssubscreens/bookappointment.dart';

import 'Screens/Book_Doctors_Appoinment/Book_apponiment.dart';
import 'Screens/Book_Doctors_Appoinment/My_Apponiments.dart';
import 'Screens/Book_Doctors_Appoinment/calendar.dart';

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
      home: Book_Appointment(),
    );
  }
}
