import 'package:flutter/material.dart';

import '../../Constants/constants.dart';

class Pharmacy extends StatefulWidget {
  const Pharmacy({Key? key}) : super(key: key);

  @override
  State<Pharmacy> createState() => _PharmacyState();
}

class _PharmacyState extends State<Pharmacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Constants.mainColor, title: Text('Pharmacy')),
        body: Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.01,
            left: MediaQuery.of(context).size.height * 0.01,
            right: MediaQuery.of(context).size.height * 0.01,
          ),
          child: ListView(
            children: [
              Text(
                'Medicines Starting With A',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width * 0.03,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01,
                    left: MediaQuery.of(context).size.height * 0.02,
                    bottom: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 209, 178, 188),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                      onTap: () => print('Welocome A'),
                      child: Text(
                        'A',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.020),
                      ),
                    )),
                    Expanded(
                        child: GestureDetector(
                            onTap: () => print('Welocome B'),
                            child: Text(
                              'B',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.020),
                            ))),
                    Expanded(
                        child: GestureDetector(
                            onTap: () => print('Welocome C'),
                            child: Text(
                              'C',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.020),
                            ))),
                    Expanded(
                        child: GestureDetector(
                            onTap: () => print('Welocome D'),
                            child: Text(
                              'D',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.020),
                            ))),
                    Expanded(
                        child: GestureDetector(
                            onTap: () => print('Welocome E'),
                            child: Text(
                              'E',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.020),
                            ))),
                    Expanded(
                        child: GestureDetector(
                            onTap: () => print('Welocome F'),
                            child: Text(
                              'F',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.020),
                            ))),
                    Expanded(
                        child: GestureDetector(
                            onTap: () => print('Welocome G'),
                            child: Text(
                              'G',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.020),
                            ))),
                    Expanded(
                        child: GestureDetector(
                            onTap: () => print('Welocome H'),
                            child: Text(
                              'H',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.020),
                            ))),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * 0.04),
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 12,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent:
                              MediaQuery.of(context).size.height * 0.3,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width * 0.04,
                              left: MediaQuery.of(context).size.width * 0.03,
                              bottom: MediaQuery.of(context).size.width * 0.01),
                          // right: MediaQuery.of(context).size.width * 0.03),
                          margin: EdgeInsets.all(
                              MediaQuery.of(context).size.width * 0.005),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(
                                  MediaQuery.of(context).size.width * 0.03)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Fast'),
                                    Text(
                                      '15 %off',
                                      style: TextStyle(
                                          backgroundColor: Color.fromARGB(
                                              255, 182, 210, 232)),
                                    ),
                                  ],
                                ),
                                Image.asset('assets/Panadol.jpg',
                                    width: MediaQuery.of(context).size.width *
                                        0.90,
                                    height: MediaQuery.of(context).size.height *
                                        0.10,
                                    fit: BoxFit.fill),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Text(
                                  'Panadol 10mg',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.05),
                                Text(
                                  'Rs.68.54',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 112, 166, 210)),
                                ),
                              ]),
                        );
                      }))
            ],
          ),
        ));
  }
}
