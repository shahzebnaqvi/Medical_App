import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/Constants/constants.dart';
import 'package:medical_app/Screens/additionaltools/bmi.dart';
import 'package:medical_app/Screens/maintools/appointments.dart';
import 'package:medical_app/Screens/maintools/myhistory.dart';
import 'package:medical_app/Screens/maintools/myreports.dart';
import 'package:medical_app/Screens/maintools/pharmacy.dart';
import 'package:medical_app/Widgets/home_widgets.dart';

var Hometitle = ["My Report", "Appointment", "Pharmacy", "My History"];
var Homeicon = [
  Icons.report,
  Icons.calendar_today,
  Icons.local_pharmacy,
  Icons.history
];
var Homenav = [MyReports(), Appointments(), Pharmacy(), MyHistory()];
var Additionaltitle = [
  "BMI",
  "BP",
  "Glucose Test",
  "Report Analysis",
];
var Additionalicon = [
  Icons.mobile_friendly,
  Icons.home,
  Icons.r_mobiledata,
  Icons.r_mobiledata
];
var Additionalnav = [Bmi(), Appointments(), Pharmacy(), MyHistory()];

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
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homenav[index]),
                      );
                    },
                    child: Container(
                        margin: EdgeInsets.all(2),
                        child: containericon(context, Homeicon[index],
                            "${Hometitle[index]}", Colors.white)),
                  );
                }),
            Text("Other Additional Tools",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Constants.mainColor)),
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: Additionaltitle.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: MediaQuery.of(context).size.width * 0.4,
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Additionalnav[index]),
                      );
                    },
                    child: Container(
                        margin: EdgeInsets.all(2),
                        child: containericon(context, Additionalicon[index],
                            Additionaltitle[index], Colors.white)),
                  );
                }),
          ],
        ),
      )),
    );
  }
}
