import 'package:flutter/material.dart';
import 'package:medical_app/Screens/auth/login.dart';
import 'package:flutter/services.dart';
import 'package:medical_app/Screens/home.dart';

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
      home: Home (),
    );
  }
}
