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
          Reports(context, 'Chicken sandwich ', '6:40 AM', 'Monady'),
        ],
      ),
    );
  }
}

Widget Reports(context, title, subtitile, subtitile1) {
  return Container(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
                leading: Image.asset(
                  'assets/Sign_up.jpg',
                  fit: BoxFit.cover,
                ),
                title: Text(
                  title,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.grey[800], fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Text(subtitile),
                    SizedBox(
                      width: 5,
                    ),
                    Text(subtitile1),
                  ],
                ),
                trailing: Column(
                  children: [
                    // Text(
                    //   trailing,
                    //   style: TextStyle(
                    //       fontSize: MediaQuery.of(context).size.height * 0.012,
                    //       // fontSize: 12,
                    //       color: Constants.blackcolor,
                    //       fontWeight: FontWeight.bold),
                    // ),
                    SizedBox(
                      // height: 1,
                      height: MediaQuery.of(context).size.height * 0.005,
                    ),
                    GestureDetector(
                      child: Icon(Icons.share, color: Constants.bluecolor),
                      onTap: () {
                        print('Welcome Report');
                      },
                    )
                  ],
                )))
      ]));
}
