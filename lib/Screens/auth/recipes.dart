import 'package:flutter/material.dart';
import '../../Constants/constants.dart';

class recipes extends StatefulWidget {
  const recipes({Key? key}) : super(key: key);

  @override
  State<recipes> createState() => _recipesState();
}

class _recipesState extends State<recipes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.mainColorWhite,
      appBar: AppBar(
        backgroundColor: Constants.mainColor1,
        title: Text(
          "Recipes",
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
      body: ListView(
        children: [
          Reports(context, 'Chicken sandwich ', '6:40 AM', 'Monday'),
          Reports(context, 'Chicken sandwich ', '6:40 AM', 'Tuesday'),
          Reports(context, 'Chicken sandwich ', '6:40 AM', 'Wednesday'),
          Reports(context, 'Chicken sandwich ', '6:40 AM', 'Thursday'),
          Reports(context, 'Chicken sandwich ', '6:40 AM', 'Friday'),
          Reports(context, 'Chicken sandwich ', '6:40 AM', 'Monday'),
          Reports(context, 'Chicken sandwich ', '6:40 AM', 'Tuesday'),
        ],
      ),
    );
  }
}

Widget Reports(context, title, subtitile, subtitile1) {
  return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.01,
        bottom: MediaQuery.of(context).size.height * 0.01,
        left: MediaQuery.of(context).size.height * 0.02,
        right: MediaQuery.of(context).size.height * 0.02,
      ),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.021,
        left: MediaQuery.of(context).size.height * 0.01,
        right: MediaQuery.of(context).size.height * 0.01,
        bottom: MediaQuery.of(context).size.height * 0.01,
      ),
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
      child: Column(children: [
        ListTile(
          leading: CircleAvatar(
            radius: 10,
            child: Text(
              "A",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Constants.mainColorWhite),
            ),
            backgroundColor: Constants.ubl,
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              title,
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.grey[800], fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: Row(
            children: [
              Icon(
                Icons.alarm,
                size: 15,
              ),
              Text(
                subtitile,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Icon(
                Icons.no_backpack,
                size: 15,
              ),
              Text(
                subtitile1,
              ),
            ],
          ),
        )
      ]));
}
