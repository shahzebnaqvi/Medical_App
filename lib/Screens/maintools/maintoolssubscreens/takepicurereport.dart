import 'dart:io';

import 'package:flutter/material.dart';

class TakePicureReport extends StatefulWidget {
  const TakePicureReport({Key? key}) : super(key: key);

  @override
  State<TakePicureReport> createState() => _TakePicureReportState();
}

class _TakePicureReportState extends State<TakePicureReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Text Recognition example"),
      ),
    );
  }
}
