import 'package:flutter/material.dart';
import 'package:medical_app/Screens/Book_Doctors_Appoinment/Hospital.dart';
import 'package:medical_app/Screens/Health%20&%20Fitness%20Goal/test_indicators.dart';
import 'package:medical_app/Screens/Pill_Planner/Add_Pill_Reminder.dart';
import 'package:medical_app/Screens/Pill_Planner/Pill_Reminder.dart';
import 'package:medical_app/Screens/auth/recipes.dart';
import 'package:medical_app/Screens/bottombar.dart';
import '../../Constants/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'carouselslider.dart';

class Timelines extends StatefulWidget {
  const Timelines({Key? key}) : super(key: key);

  @override
  State<Timelines> createState() => _TimelinesState();
}

class _TimelinesState extends State<Timelines> {
  bool value = false;
  bool value1 = false;
  bool value2 = false;
  String _dropDownValue = "";
  double currentIndex = 0;
  final List<String> imagesList = [
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/11/18/19/00/breads-1836411_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
  ];
  void tapped(int index) {
    if (index == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => PillRemainder()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AddPillReminder()));
    }
  }

  @override
  Widget build(BuildContext context) {
    List title = [
      'Get Fit',
      'Goals & Challenges',
      'Pill Reminder',
      'Health Records',
      'My Mart',
      'My Profile',
      'Find Doctor',
      'Test Iquiry',
      'Diet Planner',
      'Women Club ',
      'Emergency',
      'Invite Friend'
    ];
    List images = [
      // 'assets/Goal.png',
      // 'assets/Getfit.png',
    ];
    return Scaffold(
      body: Container(
        // padding:
        //     EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/curve.jpg"), fit: BoxFit.cover)),
        child: ListView(children: [
          profile(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => recipes()));
              },
              child: crauselSilder1()),

          //Banner
          Container(
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.height * 0.02,
              right: MediaQuery.of(context).size.height * 0.02,
              top: MediaQuery.of(context).size.height * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.008,
            ),
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.02,
              bottom: MediaQuery.of(context).size.height * 0.02,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(05),
              gradient: LinearGradient(colors: [
                Colors.blue,
                Color.fromARGB(255, 129, 193, 223),
                Colors.lightBlueAccent
              ]),
              //    color: Constants.bannercolor,
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.2),
                  spreadRadius: 0.1,
                  blurRadius: 2,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.vaccines),
                    Text("Test Adds",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15)),
                    Icon(Icons.vaccines),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Nice Jobs!",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text("This is 320 X 50 test add",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        )),
                    Icon(Icons.shop),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.003,
          ),
          Padding(
              padding: EdgeInsets.only(
            // top: MediaQuery.of(context).size.width * 0.04,
            right: MediaQuery.of(context).size.width * 0.04,
            left: MediaQuery.of(context).size.width * 0.04,
            // bottom: MediaQuery.of(context).size.width * 0.04,
          )),
          Column(children: [
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 12,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 02,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 100,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      tapped(index);
                    },
                    child: Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.02,
                          right: MediaQuery.of(context).size.height * 0.01,
                          top: MediaQuery.of(context).size.height * 0.01,
                          bottom: MediaQuery.of(context).size.height * 0.008,
                        ),
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.02,
                          bottom: MediaQuery.of(context).size.height * 0.02,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.2),
                              spreadRadius: 0.1,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              // images[index],
                              'assets/Goal.png',
                              // height: 20,
                              width: MediaQuery.of(context).size.width * 0.10,
                            ),
                            // Icon(
                            //   Icons.medical_services_sharp,
                            //   color: Constants.mainColor1,
                            //   size: 25,
                            // ),
                            Spacer(),
                            Text(
                              title[index],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        )),
                  );
                }),

            // Shop Crausel slider
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.07),
                  child: Text(
                    "Shop",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            shopcrausel(),
          ]),
        ]),
      ),
      bottomNavigationBar: Bottombar(num: "0"),
    );
  }

// Crausel Shop
  Widget shopcrausel() {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: imagesList
          .map(
            (item) => Padding(
              padding: const EdgeInsets.all(0.0),
              child: Card(
                elevation: 6.0,
                shadowColor: Constants.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Image.network(
                        item,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }

// Profile
  Widget profile(context) {
    return Column(
      children: [
        Container(
            child: ListTile(
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Hospital()));
            },
            child: CircleAvatar(
                child: ClipOval(child: Image.asset('assets/doctor2.jpg'))),
          ),
          title: Text(
            'Hello Joseph Allison,',
             style: TextStyle(color: Constants.mainColorWhite),
            textScaleFactor: 1,
          ),
          subtitle: Text(
            'Things look allright',
            style: TextStyle(color: Constants.mainColorWhite),
            textScaleFactor: 1,
          ),
          trailing: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => test_indicators()));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 19.0),
              child: Icon(
                Icons.notification_add_rounded,
                color: Constants.mainColorWhite,
              ),
            ),
          ),
        )),
      ],
    );
  }
}
