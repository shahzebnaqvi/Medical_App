import 'package:flutter/material.dart';
import 'package:flutter_mobile_vision/flutter_mobile_vision.dart';

class TakePicureReport extends StatefulWidget {
  const TakePicureReport({Key? key}) : super(key: key);

  @override
  State<TakePicureReport> createState() => _TakePicureReportState();
}

class _TakePicureReportState extends State<TakePicureReport> {
  @override
  void initState() {
    FlutterMobileVision.start().then((value) {
      print("Permission Granted");
    });
    super.initState();
  }

  scanstart() async {
    List<OcrText> list = [];
    try {
      list =
          await FlutterMobileVision.read(waitTap: true, fps: 5, multiple: true);
      for (OcrText text in list) {
        print("value: ${text.value}");
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
