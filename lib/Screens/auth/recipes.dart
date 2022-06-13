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
    return Center(
      child: Column(
        children: [
          Reports(context, 'Chicken sandwich ', '6:40 AM', 'Monday'),
          Reports(context, 'Chicken sandwich ', '6:40 AM', 'Tuesday'),
          Reports(context, 'Chicken sandwich ', '6:40 AM', 'Wednesday'),
          Reports(context, 'Chicken sandwich ', '6:40 AM', 'Thursday'),
          Reports(context, 'Chicken sandwich ', '6:40 AM', 'Friday'),
        ],
      ),
    );
  }
}

Widget Reports(context, title, subtitile, subtitile1) {
  return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.021,
        left: MediaQuery.of(context).size.height * 0.01,
        right: MediaQuery.of(context).size.height * 0.01,
        bottom: MediaQuery.of(context).size.height * 0.01,
      ),
      child: Column(children: [
        Card(
            semanticContainer: true,
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
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
            ))
      ]));
}
