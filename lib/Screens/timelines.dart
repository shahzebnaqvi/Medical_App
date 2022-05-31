import 'package:flutter/material.dart';

import '../Constants/constants.dart';

class Timelines extends StatefulWidget {
  const Timelines({Key? key}) : super(key: key);

  @override
  State<Timelines> createState() => _TimelinesState();
}

class _TimelinesState extends State<Timelines> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.mainColorWhite,
        appBar: AppBar(
          backgroundColor: Constants.mainColorWhite,
          title: Text(
            "Timelines",
            style: TextStyle(color: Constants.blackcolor),
          ),
          leading: IconButton(
              color: Colors.white,
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 20,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: ListView(children: [
          mytasks(
            context,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          workoutplan(
            context,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          dietplan(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          healthtracker(context)
        ]));
  }
}

// Widget My Tasks
Widget mytasks(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.9,
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.01,
      bottom: MediaQuery.of(context).size.height * 0.01,
      left: MediaQuery.of(context).size.height * 0.02,
      right: MediaQuery.of(context).size.height * 0.02,
    ),
    padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Completed Task",
            ),
            Text(
              "5/10",
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Tasks",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              "Progress",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    ),
  );
}

// Widget Workoutplan
Widget workoutplan(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.9,
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.01,
      bottom: MediaQuery.of(context).size.height * 0.01,
      left: MediaQuery.of(context).size.height * 0.02,
      right: MediaQuery.of(context).size.height * 0.02,
    ),
    padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("WORKOUT PLAN", style: TextStyle(fontWeight: FontWeight.bold)),
            InkWell(
              onTap: () {},
              child: Text(" +  ADD PLAN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Constants.redcolor)),
            ),
          ],
        ),
        Divider(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Today Tasks",
            ),
            Text("Chest",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Divider(),
            Text(
              "Weekly Tasks",
            ),
            Text("Chest , Trap, Tricep ,Abs",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Divider(),
            Row(
              children: [
                Icon(Icons.watch_later_outlined),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                Text("60 mins")
              ],
            )
          ],
        )
      ],
    ),
  );
}

// Widget My Diet Plan
Widget dietplan(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.9,
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.01,
      bottom: MediaQuery.of(context).size.height * 0.01,
      left: MediaQuery.of(context).size.height * 0.02,
      right: MediaQuery.of(context).size.height * 0.02,
    ),
    padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("MY DIET", style: TextStyle(fontWeight: FontWeight.bold)),
            InkWell(
              onTap: () {},
              child: Text(" +  ADD PLAN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Constants.redcolor)),
            ),
          ],
        ),
        Divider(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("LUNCH",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Divider(),
            Text("BEAKFAST",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Divider(),
            Text("DINNER",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Divider(),
          ],
        )
      ],
    ),
  );
}

// Widget Health Tarcker
Widget healthtracker(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.9,
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.01,
      bottom: MediaQuery.of(context).size.height * 0.01,
      left: MediaQuery.of(context).size.height * 0.02,
      right: MediaQuery.of(context).size.height * 0.02,
    ),
    padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("HEALTH TRACKER",
                style: TextStyle(fontWeight: FontWeight.bold)),
            InkWell(
              onTap: () {},
              child: Text(" +  ADD PLAN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Constants.redcolor)),
            ),
          ],
        ),
        Divider(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("LUNCH",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Divider(),
            Text("BEAKFAST",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Divider(),
            Text("DINNER",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Divider(),
          ],
        )
      ],
    ),
  );
}
