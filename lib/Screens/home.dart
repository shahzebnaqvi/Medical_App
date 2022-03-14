import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/Constants/constants.dart';
import 'package:medical_app/Widgets/home_widgets.dart';

var Hometitle = ["My Report", "Appointment", "pharmacy", "My History"];
var Homeicon = [
  Icons.mobile_friendly,
  Icons.home,
  Icons.r_mobiledata,
  Icons.r_mobiledata
];
var Homenav = [Home(), Home(), Home(), Home()];
var Additionaltitle = [
  "My Report",
  "Appointment",
  "pharmacy",
  "My History",
  "My Report",
  "Appointment",
  "pharmacy",
  "My History"
];

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
          child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        // color: Color(0xFF2196F3),
        child: ListView(
          children: [
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: MediaQuery.of(context).size.width * 0.4,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.all(2),
                      child: containericon(context, Homeicon[index],
                          "${Hometitle[index]}", Colors.white));
                }),
            Text("Other Additional Tools",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Constants.mainColor)),
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: MediaQuery.of(context).size.width * 0.4,
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    child: Container(
                        margin: EdgeInsets.all(2),
                        child: containericon(context, Icons.dangerous,
                            Additionaltitle[index], Colors.white)),
                  );
                }),
          ],
        ),
      )),
    );
  }
}
