import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ResetAnimation extends StatefulWidget {
  const ResetAnimation({Key? key}) : super(key: key);

  @override
  State<ResetAnimation> createState() => _ResetAnimationState();
}

class _ResetAnimationState extends State<ResetAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
          height: MediaQuery.of(context).size.width * 0.5,
          child: Lottie.asset("assets/lottiefile/reset.json")),
    ));
  }
}
