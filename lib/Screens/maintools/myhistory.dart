import 'dart:html';

import 'package:flutter/material.dart';

class MyHistory extends StatelessWidget {
  const MyHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('History'),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text('Doctors'),
              ),
              Tab(
                child: Text('Patients'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
         
            Doctors('Tumor Cancer', '12-03-2022',
                'Tumors can affect bones, skin, tissue, organs and glands. Many tumors are not cancer (theyre benign).  '),
        

        
            Doctors('Tumor Cancer', '12-03-2022',
                'Tumors can affect bones, skin, tissue, organs and glands. Many tumors are not cancer (theyre benign).  '),

            // Padding(
            //     padding: EdgeInsets.all(10),
            //     child: Container(
            //       child: Card(
            //         child: ListTile(
            //           leading: Image.asset('assets/login.jpg'),
            //           title: Text(
            //             'Tumor Cancer',
            //             style: TextStyle(
            //                 fontSize: 15, fontWeight: FontWeight.bold),
            //           ),
            //           trailing: Text(
            //             '8:30 PM',
            //             style: TextStyle(
            //                 fontSize: 15, fontWeight: FontWeight.bold),
            //           ),
            //         ),
            //       ),
            //     )
            //     ),
          ],
        ),
      ),
    );
  }
}

Widget Doctors(String title, String trailing, String subtitile) {
  return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 5),
        )
      ]),
      child: Column(children: [
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
                leading: Image.asset(
                  'assets/login.jpg',
                  fit: BoxFit.cover,
                ),
                title: Text(
                  title,
                  style: TextStyle(
                      color: Colors.grey[800], fontWeight: FontWeight.bold),
                ),
                subtitle: Text(subtitile),
                trailing: Column(
                  children: [
                    Text(
                      trailing,
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    // Text('08:30 PM'),
                    GestureDetector(
                      child: Text(
                        'View',
                        style: TextStyle(color: Colors.blue),
                      ),
                      onTap: () {
                        print('Welcome Report');
                      },
                    )
                  ],
                )))
      ]));
}
