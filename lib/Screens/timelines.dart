import 'package:flutter/material.dart';

import '../Constants/constants.dart';
//import 'package:percent_indicator/percent_indicator.dart';

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
          healthtracker(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          mymedicine(
            context,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Challenges(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          shopnow(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          water(context)
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
            // CircularProgressIndicator(
            //   // key: 3,
            //   value: 5,
            //   semanticsLabel: "ssd",
            //   strokeWidth: 10,
            //   semanticsValue: "34",
            //   valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            // ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  child: new CircularProgressIndicator(
                    strokeWidth: 15,
                    value: 0.7,
                    color: Colors.purple,
                    backgroundColor: Colors.grey[100],
                  ),
                ),
                Text("70%"),
              ],
            ),
            // CircularProgressIndicator(
            //     backgroundColor: Colors.grey,
            //     color: Colors.purple,
            //     strokeWidth: 10,
            //     value: 0.5),
            // CircularProgressIndicator(
            //   backgroundColor: Colors.grey,
            //   color: Colors.green,
            //   strokeWidth: 5,
            //   value: 5,
            // ),
            // CircularPercentIndicator(
            //   radius: 60.0,
            //   lineWidth: 5.0,
            //   percent: 1.0,
            //   center: new Text("100%"),
            //   progressColor: Colors.red,
            // ),
            // Text(
            //   "Progress",
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // )
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
              Text("WORKOUT PLAN",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              InkWell(
                onTap: () {},
                child: Text(" +  ADD PLAN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Constants.redcolor)),
              ),
            ],
          ),
          Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(
                    "Today Tasks",
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  Icon(Icons.watch_later_outlined),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Text("40 mins")
                ],
              )
            ],
          ),
          Text("Chest",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          Divider(),
          Text(
            "Weekly Tasks",
          ),
          Text("Chest, Trap, Tricep, Abs",
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
      ));
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
            Text("MY DIET",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Divider(),
            Text("BEAKFAST",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Divider(),
            Text("DINNER",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
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
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
            Text("BLOOD PRESURE",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Divider(),
            Text("SUGAR",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Divider(),
            Text("WEIGHT",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Divider(),
          ],
        )
      ],
    ),
  );
}

// Widget My medicine
Widget mymedicine(context) {
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
            Text("MY MEDICINE",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
            Text("PRESCRIPTION MEDICINE",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Divider(),
            Text("NUTRITION SUPPLEMENT",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Divider(),
            Text("MY MEDICAL RECORDS",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Divider(),
            Text("MY APPONIMENT",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Divider(),
          ],
        )
      ],
    ),
  );
}

// Widget Challenges
Widget Challenges(context) {
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
            Text("CHALLENGES",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
            Text("DIET CHALLENGES",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Divider(),
            Text("FITNESS CHALLENGES",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Divider(),
            Text("CHALLENGES A FRIEND",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Divider(),
          ],
        )
      ],
    ),
  );
}

// Widget Shop now
Widget shopnow(context) {
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
            Text("SHOP NOW",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
            Text("PHARMACY",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Divider(),
            Text("HOME ESSENTIALS",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Divider(),
            Text("GYM SUPPLEMENTS",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Divider(),
          ],
        )
      ],
    ),
  );
}

// Widget Water
Widget water(context) {
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
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("WATER",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            // InkWell(
            //   onTap: () {},
            //   child: Text(" +  ADD PLAN",
            //       style: TextStyle(
            //           fontWeight: FontWeight.bold, color: Constants.redcolor)),
            // ),
          ],
        ),
        Divider(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                CircleAvatar(
                    backgroundColor: Constants.mainColorWhite,
                    child: Image.asset('assets/glass.png')),
                CircleAvatar(
                    radius: 22,
                    backgroundColor: Constants.mainColorWhite,
                    child: Image.asset('assets/glasswhite.jpg')),
                CircleAvatar(
                    radius: 22,
                    backgroundColor: Constants.mainColorWhite,
                    child: Image.asset('assets/glasswhite.jpg')),
                CircleAvatar(
                    radius: 22,
                    backgroundColor: Constants.mainColorWhite,
                    child: Image.asset('assets/glasswhite.jpg')),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text("842 Cal",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Divider(),
              ],
            )
          ],
        ),
      ]));
}
