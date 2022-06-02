// import 'package:flutter/material.dart';
// import 'package:navigation_action_bar/navigation_action_bar.dart';

// class Bottombar extends StatefulWidget {
//   const Bottombar({Key? key}) : super(key: key);

//   @override
//   State<Bottombar> createState() => _BottombarState();
// }

// class _BottombarState extends State<Bottombar> {
//   double currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: NavigationActionBar(
//       context: context,
//       scaffoldColor: Colors.blueAccent,
//       index: 0,
//       subItems: [
//         NavBarItem(iconData: Icons.attach_file, size: 25),
//         NavBarItem(iconData: Icons.photo, size: 25),
//         NavBarItem(iconData: Icons.camera_alt, size: 25),
//       ],
//       mainIndex: 2,
//       items: [
//         NavBarItem(iconData: Icons.list, size: 30),
//         NavBarItem(iconData: Icons.compare_arrows, size: 30),
//         NavBarItem(iconData: Icons.add, size: 40),
//         NavBarItem(iconData: Icons.call_merge, size: 30),
//         NavBarItem(iconData: Icons.person, size: 30),
//       ],
//       onTap: (index) {
//         setState(() {
//           currentIndex = index;
//         });
//       },
//     ));
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:medical_app/Constants/constants.dart';
// import 'package:medical_app/Screens/additionaltools/bmi.dart';
// import 'package:medical_app/Screens/maintools/appointments.dart';
// import 'package:medical_app/Screens/maintools/myhistory.dart';
// import 'package:medical_app/Screens/maintools/myreports.dart';
// import 'package:medical_app/Screens/maintools/pharmacy.dart';

// var pageindex = 0;

// class Bottombar extends StatefulWidget {
//   final String num;
//   const Bottombar({Key? key, required this.num}) : super(key: key);

//   @override
//   State<Bottombar> createState() => _BottombarState();
// }

// class _BottombarState extends State<Bottombar> {
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: [
//         BottomNavigationBarItem(
//             label: "Reports",
//             icon: Icon(
//               Icons.report_gmailerrorred_outlined,
//               size: 30,
//             )),

//         // ),
//         BottomNavigationBarItem(
//             label: "Appoinment",
//             icon: Icon(
//               Icons.medical_services,
//               size: 30,
//             )),

//         BottomNavigationBarItem(
//             label: "Pharmacy",
//             icon: Icon(
//               Icons.local_pharmacy,
//               size: 30,
//             )),
//         BottomNavigationBarItem(
//             label: "History",
//             icon: Icon(
//               Icons.history,
//               size: 30,
//             )),
//       ],
//       currentIndex: pageindex,
//       onTap: (index1) {
//         setState(() {
//           pageindex = index1;
//         });
//         if (index1 == 0 && widget.num != "0") {
//           Navigator.pushReplacement(
//               context, MaterialPageRoute(builder: (context) => MyHistory()));
//           print(widget.num);
//         } else if (index1 == 1 && widget.num != "1") {
//           Navigator.pushReplacement(
//               context, MaterialPageRoute(builder: (context) => Appointments()));
//           index1 = 0;
//         } else if (index1 == 2 && widget.num != "2") {
//           Navigator.pushReplacement(
//               context, MaterialPageRoute(builder: (context) => Pharmacy()));
//           index1 = 0;
//         } else if (index1 == 3 && widget.num != "3") {
//           Navigator.pushReplacement(
//               context, MaterialPageRoute(builder: (context) => MyHistory()));
//           index1 = 0;
//         }
//       },
//       unselectedItemColor: Colors.grey,
//       showUnselectedLabels: true,
//       selectedItemColor: Constants.mainColor,
//     );
//   }
// }
