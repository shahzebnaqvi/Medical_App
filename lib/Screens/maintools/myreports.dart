import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:medical_app/Constants/constants.dart';
import 'package:medical_app/Screens/maintools/maintoolssubscreens/formreportupload.dart';

class MyReports extends StatelessWidget {
  const MyReports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDialOpen = ValueNotifier<bool>(false);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Constants.mainColor,
          title: Text('My Reports'),
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Reports(context, 'Elon Musk', '12-03-2022',
                  'Tumors can affect bones, skin, tissue, organs and glands. Many tumors are not cancer (theyre benign).  '),
              Reports(context, 'John ', '10-02-2022',
                  'Tumors can affect bones, skin, tissue, organs and glands.  '),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: SpeedDial(
            openCloseDial: isDialOpen,

            animatedIcon: AnimatedIcons.add_event,
            // openCloseDial: isDialOpen,
            backgroundColor: Constants.mainColor,
            // overlayColor: Colors.grey,
            // overlayOpacity: 0.5,
            spacing: 15,
            spaceBetweenChildren: 15,
            closeManually: true,
            children: [
              SpeedDialChild(
                  child: Icon(Icons.share_rounded),
                  label: 'Fill a Form',
                  backgroundColor: Colors.blue,
                  onTap: () {
                    isDialOpen.value = false;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FormReportUpload()));
                  }),
              SpeedDialChild(
                  child: Icon(Icons.mail),
                  label: 'Upload Image',
                  onTap: () {
                    print('Mail Tapped');
                    isDialOpen.value = false;
                  }),
              SpeedDialChild(
                  child: Icon(Icons.copy),
                  label: 'Take a Picture',
                  onTap: () {
                    print('Take a Picture');
                    isDialOpen.value = false;
                  }),
            ],
          ),
        ));
  }
}

Widget buttonreport(context, buttontext) {
  return Container(
    padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.width * 0.08,
        left: MediaQuery.of(context).size.width * 0.05,
        bottom: MediaQuery.of(context).size.width * 0.05,
        right: MediaQuery.of(context).size.width * 0.05),
    margin: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.04),
    decoration: BoxDecoration(
      color: Constants.lightColor,
      borderRadius: BorderRadius.all(
          Radius.circular(MediaQuery.of(context).size.width * 0.03)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    width: MediaQuery.of(context).size.width * 0.95,
    child: Center(
      child: Text(buttontext,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.04,
              color: Constants.mainColor,
              fontWeight: FontWeight.bold)),
    ),
  );
}

Widget Reports(context, title, trailing, subtitile) {
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
                subtitle: Text(subtitile),
                trailing: Column(
                  children: [
                    Text(
                      trailing,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.012,
                          // fontSize: 12,
                          color: Constants.blackcolor,
                          fontWeight: FontWeight.bold),
                    ),
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
