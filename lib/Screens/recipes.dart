import 'package:flutter/material.dart';

class recipes extends StatefulWidget {
  const recipes({Key? key}) : super(key: key);

  @override
  State<recipes> createState() => _recipesState();
}

class _recipesState extends State<recipes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Icon(Icons.abc),
        title: Text("Chicken Sandwich"),
      ),
      // width: MediaQuery.of(context).size.width * 0.9,
      // margin: EdgeInsets.only(
      //   top: MediaQuery.of(context).size.height * 0.01,
      //   bottom: MediaQuery.of(context).size.height * 0.01,
      //   left: MediaQuery.of(context).size.height * 0.02,
      //   right: MediaQuery.of(context).size.height * 0.02,
      // ),
      // padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.circular(10),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.grey.withOpacity(0.2),
      //       spreadRadius: 5,
      //       blurRadius: 7,
      //       offset: Offset(0, 3), // changes position of shadow
      //     ),
      //   ],
      // ),
    );
  }
}
