// // import 'package:flutter/material.dart';
// // import 'package:navigation_action_bar/navigation_action_bar.dart';

// // class Bottombarnavigation extends StatefulWidget {
// //   const Bottombarnavigation({Key? key}) : super(key: key);

// //   @override
// //   State<Bottombarnavigation> createState() => _BottombarState();
// // }

// // class _BottombarState extends State<Bottombarnavigation> {
// //   double currentIndex = 0;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         bottomNavigationBar: NavigationActionBar(
// //       context: context,
// //       scaffoldColor: Colors.white,
// //       index: 0,
// //       subItems: [
// //         NavBarItem(iconData: Icons.attach_file, size: 25),
// //         NavBarItem(iconData: Icons.photo, size: 25),
// //         NavBarItem(iconData: Icons.camera_alt, size: 25),
// //       ],
// //       mainIndex: 2,
// //       items: [
// //         NavBarItem(iconData: Icons.list, size: 30),
// //         NavBarItem(iconData: Icons.compare_arrows, size: 30),
// //         NavBarItem(iconData: Icons.add, size: 40),
// //         NavBarItem(iconData: Icons.call_merge, size: 30),
// //         NavBarItem(iconData: Icons.person, size: 30),
// //       ],
// //       onTap: (index) {
// //         setState(() {
// //           currentIndex = index;
// //         });
// //       },
// //     ));
// //   }
// // }

import 'package:flutter/material.dart';
import 'package:medical_app/Constants/constants.dart';
import 'package:medical_app/Screens/additionaltools/bmi.dart';
import 'package:medical_app/Screens/circular.dart';
import 'package:medical_app/Screens/maintools/appointments.dart';
import 'package:medical_app/Screens/maintools/maintoolssubscreens/bookappointment.dart';
import 'package:medical_app/Screens/maintools/myhistory.dart';
import 'package:medical_app/Screens/maintools/myreports.dart';
import 'package:medical_app/Screens/maintools/pharmacy.dart';
import 'package:pandabar/pandabar.dart';
import 'package:circular_menu/circular_menu.dart';

var pageindex = 0;

class Bottombarnavigation extends StatefulWidget {
  final String num;
  const Bottombarnavigation({Key? key, required this.num}) : super(key: key);

  @override
  State<Bottombarnavigation> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombarnavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            label: "Reports",
            icon: Icon(
              Icons.report_gmailerrorred_outlined,
              size: 30,
            )),

        // ),
        BottomNavigationBarItem(
            label: "Appoinment",
            icon: Icon(
              Icons.medical_services,
              size: 30,
            )),

        BottomNavigationBarItem(
            label: "Pharmacy",
            icon: Icon(
              Icons.local_pharmacy,
              size: 30,
            )),
        BottomNavigationBarItem(
            label: "History",
            icon: Icon(
              Icons.history,
              size: 30,
            )),
      ],
      currentIndex: pageindex,
      onTap: (index1) {
        setState(() {
          pageindex = index1;
        });
        if (index1 == 0 && widget.num != "0") {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => MyHistory()));
          print(widget.num);
        } else if (index1 == 1 && widget.num != "1") {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Appointments()));
          index1 = 0;
        } else if (index1 == 2 && widget.num != "2") {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Pharmacy()));
          index1 = 0;
        } else if (index1 == 3 && widget.num != "3") {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => MyHistory()));
          index1 = 0;
        }
      },
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      selectedItemColor: Constants.mainColor,
    );
  }
}

int page = 0;

class Bottombarcircular extends StatefulWidget {
  final String num;
  const Bottombarcircular({Key? key, required this.num}) : super(key: key);

  @override
  State<Bottombarcircular> createState() => _BottombarcircularState();
}

String _colorName = 'No';
Color _color = Colors.black;

class _BottombarcircularState extends State<Bottombarcircular> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: PandaBar(
        fabIcon: Icon(
          Icons.account_balance_wallet,
          color: Colors.white,
        ),
        buttonColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 6, 129, 23),
        buttonSelectedColor: Colors.white,
        fabColors: [
          Color.fromARGB(255, 6, 129, 23),
          Color.fromARGB(255, 9, 110, 23),
          Color.fromARGB(255, 18, 129, 23),
          Color.fromARGB(255, 13, 87, 12),
        ],
        buttonData: [
          PandaBarButtonData(id: 0, icon: Icons.home, title: 'Home'),
          PandaBarButtonData(id: 1, icon: Icons.book, title: 'News Update'),
          PandaBarButtonData(id: 2, icon: Icons.headset_mic, title: 'Support'),
          PandaBarButtonData(id: 3, icon: Icons.person, title: 'Profile'),
        ],
        onChange: (id) {
          setState(() {
            page = id;
            print(page);
            print(page.runtimeType);
            print(id.runtimeType);
          });
          if (page == 0 && widget.num != "0") {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => MyHistory()));
            print(widget.num);
          } else if (id == 1 && widget.num != "1") {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => BookApppointment()));
            id = 0;
          } else if (id == 2 && widget.num != "2") {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Pharmacy()));
            id = 0;
          } else if (id == 3 && widget.num != "3") {
            // Support()
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => MyHistory()));
            id = 0;
          }
        },
        onFabButtonPressed: () {
          // Navigator.pushReplacement(context,
          //     MaterialPageRoute(builder: (context) => Circularbutton()));
          final circularMenu = CircularMenu(items: [
            CircularMenuItem(
                icon: Icons.home,
                onTap: () {
                  // callback
                }),
            CircularMenuItem(
                icon: Icons.search,
                onTap: () {
                  //callback
                }),
            CircularMenuItem(
                icon: Icons.settings,
                onTap: () {
                  //callback
                }),
            CircularMenuItem(
                icon: Icons.star,
                onTap: () {
                  //callback
                }),
            CircularMenuItem(
                icon: Icons.pages,
                onTap: () {
                  //callback
                }),
          ]);
        },
      ),
    );
  }
}
