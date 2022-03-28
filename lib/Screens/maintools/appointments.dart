import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:medical_app/Constants/constants.dart';
import 'package:medical_app/Screens/maintools/maintoolssubscreens/bookappointment.dart';

class Appointments extends StatefulWidget {
  const Appointments({Key? key}) : super(key: key);

  @override
  State<Appointments> createState() => _AppointmentsState();
}

var isDialOpen = ValueNotifier<bool>(false);

class _AppointmentsState extends State<Appointments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Constants.mainColor,
          title: Text('Appointments'),
        ),
        body: Center(
          child: Container(
           width: MediaQuery.of(context).size.width * 0.95,
            child: ListView(
              children: [
                Container(
                  // decoration: BoxDecoration(
                  //   color: Constants.lightColor,
                  //   borderRadius: BorderRadius.all(Radius.circular(
                  //       MediaQuery.of(context).size.width * 0.04)
                  //       ),
                  //   boxShadow: [
                  //     BoxShadow(
                  //       color: Colors.grey.withOpacity(0.2),
                  //       spreadRadius: 1,
                  //       blurRadius: 2,
                  //       offset: Offset(0, 3), // changes position of shadow
                  //     ),
                  //   ],
                  // ),
                  // width: MediaQuery.of(context).size.width * 0.95,
                   margin: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.04),
                    // child: InkWell(
                    // onTap: () {},
                    child: TextField(
                      autofocus: false,
                      style:TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                        decoration: InputDecoration(
                        filled: true,
                        suffixIcon: Icon(Icons.search),
                        fillColor: Colors.white,
                        hintText: 'Search',
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 12.0, top: 12.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(29),
                        ),
                           enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                      ),
                    ),
                  ),
                      
                  Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.width*0.04)),
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),  
                    shrinkWrap: true,
                    itemCount: 16,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: MediaQuery.of(context).size.height * 0.2,
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Container(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width * 0.04,
                              left: MediaQuery.of(context).size.width * 0.03,
                              bottom: MediaQuery.of(context).size.width * 0.01,
                              right: MediaQuery.of(context).size.width * 0.03),
                          margin: EdgeInsets.all(
                              MediaQuery.of(context).size.width * 0.005),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(
                                  MediaQuery.of(context).size.width * 0.03)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: InkWell(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/doctor2.jpg',
                                width: MediaQuery.of(context).size.width*0.90 ,
                                height: MediaQuery.of(context).size.height*0.10,
                                 fit:BoxFit.fill  
                                ),  
                                      Text("Dr John", 
                                        style: TextStyle( 
                                            color: Constants.mainColor,
                                                fontSize: MediaQuery.of(context)  
                                                        .size
                                                        .width *
                                                    0.03),
                                            textAlign: TextAlign.center
                                            ),
                                     Text("Hematologists",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),) 

                                // ListTile(
                                //     title: Icon(Icons.document_scanner_rounded,
                                //         size:
                                //             MediaQuery.of(context).size.width *
                                //                 0.1,
                                //         color: Constants.mainColor),
                                //     subtitle: Column(
                                //       children: [
                                //         Text("Dr John",
                                //             style: TextStyle(
                                //                 color: Constants.mainColor,
                                //                 fontSize: MediaQuery.of(context)
                                //                         .size
                                //                         .width *
                                //                     0.03),
                                //             textAlign: TextAlign.center),
                                //         Text("Hematologists")
                                //       ],
                                //     )
                                //     )
                                // Icon(
                                //   Icons.document_scanner_rounded,
                                //   size: MediaQuery.of(context).size.width * 0.1,
                                //   color: Constants.mainColor,
                                // ),
                                // Padding(
                                //   padding: EdgeInsets.only(
                                //     top: MediaQuery.of(context).size.width * 0.04,
                                //   ),
                                //   child: Text(
                                //     'Dr Smith',
                                //     style: TextStyle(
                                //         color: Constants.mainColor,
                                //         fontSize:
                                //             MediaQuery.of(context).size.width *
                                //                 0.03),
                                //           textAlign: TextAlign.center,
                                //   ),
                                // )
                              ],
                            ),
                          ));
                    })
                // child: ListTile(
                //   leading: CircleAvatar(
                //       backgroundImage: AssetImage('assets/login.jpg')),
                //   title: Text(
                //     'Book Appointment',
                //     style: TextStyle(
                //         fontSize: MediaQuery.of(context).size.width * 0.045,
                //         fontWeight: FontWeight.bold),
                //   ),
                //   subtitle: RichText(
                //     text: TextSpan(
                //       text: 'Dentist ',
                //       style: TextStyle(
                //           color: Colors.black,
                //           fontSize:
                //               MediaQuery.of(context).size.width * 0.04),
                //       children: <TextSpan>[
                //         TextSpan(
                //           text: '\n',
                //         ),
                //         TextSpan(
                //           text: 'Lorem ipsum dolor sit amet, consectetur ',
                //           style: TextStyle(
                //               color: Colors.grey,
                //               fontSize:
                //                   MediaQuery.of(context).size.width * 0.03),
                //         ),
                //       ],
                //     ),
                //   ),
                //   trailing: Column(
                //     crossAxisAlignment: CrossAxisAlignment.end,
                //     children: [
                //       Icon(Icons.mail),
                //       Text("21-3-2020",
                //           style: TextStyle(
                //               fontSize: MediaQuery.of(context).size.width *
                //                   0.025)),
                //       Text(
                //         "7:30 pm",
                //         style: TextStyle(
                //             fontSize:
                //                 MediaQuery.of(context).size.width * 0.04,
                //             fontWeight: FontWeight.bold),
                //       )
                //     ],
                //   ),
                // ),
              ],
            ),
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
                  label: 'Book Appointment',
                  backgroundColor: Colors.blue,
                  onTap: () {
                    isDialOpen.value = false;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookApppointment()));
                  }),
            ],
          ),
        ));
  }
}