import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/Screens/Book_Doctors_Appoinment/Doctors.dart';
import 'package:medical_app/Screens/maintools/appointments.dart';

import 'package:pandabar/pandabar.dart';

// var pageindex = '0';
int page = 0;

class Bottombar extends StatefulWidget {
  // final String? idshared;
  // final String? emailshared;
  // final String? profileshared;
  // final String? nameshared;
  // final String? referalshared;

  final String num;
  const Bottombar({
    Key? key,
    required this.num,
    // @required this.idshared,
    // @required this.emailshared,
    // @required this.profileshared,
    // @required this.nameshared,
    // @required this.referalshared
  }) : super(key: key);

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
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
        backgroundColor: Color.fromARGB(255, 16, 118, 201),
        // backgroundColor: Color.fromARGB(255, 6, 129, 23),
        buttonSelectedColor: Colors.white,
        fabColors: [
          Color.fromARGB(255, 16, 118, 201),

          Color.fromARGB(255, 16, 118, 201),

          Color.fromARGB(255, 16, 118, 201),

          Color.fromARGB(255, 16, 118, 201),
          // Color.fromARGB(255, 6, 129, 23),
          // Color.fromARGB(255, 9, 110, 23),
          // Color.fromARGB(255, 18, 129, 23),
          // Color.fromARGB(255, 13, 87, 12),
        ],
        buttonData: [
          PandaBarButtonData(id: 0, icon: Icons.home, title: 'Home'),
          PandaBarButtonData(id: 1, icon: Icons.payments, title: 'Transaction'),
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
                context, MaterialPageRoute(builder: (context) => Doctors()));
            print(widget.num);
          } else if (id == 1 && widget.num != "1") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Doctors()));
            id = 0;
          } else if (id == 2 && widget.num != "2") {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Doctors()));
            id = 0;
          } else if (id == 3 && widget.num != "3") {
            // Support()
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Doctors()));
            id = 0;
          }
        },
        onFabButtonPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Doctors()));
          // showCupertinoDialog(
          //     context: context,
          //     builder: (context) {
          //       return CupertinoAlertDialog(
          //         content: Text('Fab Button Pressed!'),
          //         actions: <Widget>[
          //           CupertinoDialogAction(
          //             child: Text('Close'),
          //             isDestructiveAction: true,
          //             onPressed: () {
          //               // Navigator.push(
          //               //     context,
          //               //     MaterialPageRoute(
          //               //         builder: (context) => Crausel_slider()));
          //               Navigator.pop(context);
          //             },
          //           )
          //         ],
          //       );
          //     });
        },
      ),
    );
  }
}


// class Bottombar2 extends StatefulWidget {
//   final String? idshared;
//   final String? emailshared;
//   final String? profileshared;
//   final String? nameshared;
//   final String? referalshared;

//   final String num;
//   const Bottombar2(
//       {Key? key,
//       required this.num,
//       @required this.idshared,
//       @required this.emailshared,
//       @required this.profileshared,
//       @required this.nameshared,
//       @required this.referalshared})
//       : super(key: key);
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   String page = 'Grey';

//   @override
//   Widget build(BuildContext context) {
//     return PandaBar(
//       buttonData: [
//         PandaBarButtonData(id: 'Grey', icon: Icons.dashboard, title: 'Grey'),
//         PandaBarButtonData(id: 'Blue', icon: Icons.book, title: 'Blue'),
//         PandaBarButtonData(
//             id: 'Red', icon: Icons.account_balance_wallet, title: 'Red'),
//         PandaBarButtonData(
//             id: 'Yellow', icon: Icons.notifications, title: 'Yellow'),
//       ],
//       onChange: (id) {
//         setState(() {
//           page = id;
//         });
//       },
//       onFabButtonPressed: () {},
//     );
//   }
// }
