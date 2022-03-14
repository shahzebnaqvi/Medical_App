import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/Constants/constants.dart';
import 'package:medical_app/Screens/additionaltools/bmi.dart';
import 'package:medical_app/Screens/maintools/appointments.dart';
import 'package:medical_app/Screens/maintools/myhistory.dart';
import 'package:medical_app/Screens/maintools/myreports.dart';
import 'package:medical_app/Screens/maintools/pharmacy.dart';
import 'package:medical_app/Widgets/home_widgets.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
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
        backgroundColor: Constants.mainColor,
      ),
      body: Center(
          child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        // color: Color(0xFF2196F3),
        child: ListView(
          children: [
            // Container(
            //     child: CarouselSlider(
            //   options: CarouselOptions(),
            //   items: imgList
            //       .map((item) => Container(
            //             child: Center(
            //                 child: Image.network(item,
            //                     fit: BoxFit.cover,
            //                     width: MediaQuery.of(context).size.width)),
            //           ))
            //       .toList(),
            // )),

            Container(
              child: TextField(
                autofocus: false,
                style: TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                decoration: InputDecoration(
                  filled: true,
                  suffixIcon: Icon(Icons.search),
                  fillColor: Colors.white,
                  hintText: 'Search',
                  contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 0.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                  color: Colors.white),
              width: 250,
              height: 50,
              margin: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.02,
                  MediaQuery.of(context).size.height * 0.03,
                  MediaQuery.of(context).size.width * 0.02,
                  MediaQuery.of(context).size.height * 0.03),
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.width * 0.005),
            ),
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
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                  bottom: MediaQuery.of(context).size.height * 0.02),
              child: Text("Other Additional Tools",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Constants.mainColor)),
            ),
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: Additionaltitle.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: MediaQuery.of(context).size.width * 0.3,
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
                        child: containericonsmall(
                            context,
                            Additionalicon[index],
                            Additionaltitle[index],
                            Colors.white)),
                  );
                }),
          ],
        ),
      )),
    );
  }
}
