import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'Screens/Timelines/timelines.dart';
import 'Screens/auth/login.dart';

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
      home: Timelines(),
    );
  }
}
