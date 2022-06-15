import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medical_app/Constants/constants.dart';

class Maps extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Maps> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(45.521563, -122.677433);
  final Set<Marker> _markers = {};
  LatLng _lastMapPosition = _center;
  MapType _currentMapType = MapType.normal;

  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  void _onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId(_lastMapPosition.toString()),
        position: _lastMapPosition,
        infoWindow: InfoWindow(
          title: 'Really cool place',
          snippet: '5 Star Rating',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }

  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Maps'),
          backgroundColor: Constants.ubl,
          leading: IconButton(
              color: Colors.white,
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 20,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 11.0,
              ),
              mapType: _currentMapType,
              markers: _markers,
              onCameraMove: _onCameraMove,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Column(
                  children: <Widget>[
                    FloatingActionButton(
                      onPressed: _onMapTypeButtonPressed,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      backgroundColor: Colors.green,
                      child: const Icon(Icons.map, size: 36.0),
                    ),
                    SizedBox(height: 16.0),
                    FloatingActionButton(
                      onPressed: _onAddMarkerButtonPressed,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      backgroundColor: Colors.green,
                      child: const Icon(Icons.add_location, size: 36.0),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.350,
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  bottom: MediaQuery.of(context).size.height * 0.01,
                  left: MediaQuery.of(context).size.height * 0.10,
                  right: MediaQuery.of(context).size.height * 0.10,
                ),
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.01,
                  right: MediaQuery.of(context).size.height * 0.01,
                  bottom: MediaQuery.of(context).size.height * 0.01,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ListView(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.circle,
                          color: Constants.redcolor,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 18,
                              color: Constants.mainColor1,
                            ),
                            Text(
                              "4.2",
                              style: TextStyle(color: Constants.mainColor1),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.10,
                      margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.025,
                        right: MediaQuery.of(context).size.height * 0.025,
                        top: MediaQuery.of(context).size.height * 0.025,
                      ),
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/doctor2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Center(
                        child: Text(
                      "Alexander Wolfe",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Center(
                        child: Text(
                      "Cardiologist",
                      style: TextStyle(color: Constants.grey),
                    )),
                    Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        bottom: MediaQuery.of(context).size.height * 0.01,
                        left: MediaQuery.of(context).size.height * 0.01,
                        right: MediaQuery.of(context).size.height * 0.01,
                      ),
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.0002,
                        bottom: MediaQuery.of(context).size.height * 0.0002,
                      ),
                      decoration: BoxDecoration(
                        color: Constants.mainColorWhite,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.all(08),
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.01,
                              // left: MediaQuery.of(context).size.height * 0.07,
                              // right: MediaQuery.of(context).size.height * 0.07,
                              bottom: MediaQuery.of(context).size.height * 0.01,
                            ),
                            decoration: BoxDecoration(
                              color: Constants.bluecolor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: GestureDetector(
                                onTap: () {}, child: Icon(Icons.phone)),
                          ),
                          Container(
                            margin: EdgeInsets.all(08),
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.01,
                              left: MediaQuery.of(context).size.height * 0.07,
                              // right: MediaQuery.of(context).size.height * 0.05,
                              bottom: MediaQuery.of(context).size.height * 0.01,
                            ),
                            decoration: BoxDecoration(
                              color: Constants.bluecolor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: GestureDetector(
                                onTap: () {}, child: Icon(Icons.message)),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class Maps extends StatefulWidget {
//   const Maps({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Maps> {
//   late GoogleMapController _googleMapController;

//   String googleAPiKey = "AIzaSyCg1UJ5-pBUCmjMZAOOnSXFYrxTrN3HYi8";
//   Set<Marker> marker = {};
//   Map<PolylineId, Polyline> polylines = {};
//   List<LatLng> polylineCoordinates = [];
//   PolylinePoints polylinePoints = PolylinePoints();

//   void dispose() {
//     _googleMapController.dispose();
//     super.dispose();
//   }

//   void _onMapCreated(GoogleMapController controller) {
//     controller.setMapStyle(Mapstyle.mapStyle);
//     _controllerGoogleMap.complete(controller);
//     newGoogleMapController = controller;

//     setState(() {
//       marker.add(Marker(
//           markerId: MarkerId('origin'),
//           position: LatLng(24.9393199, 67.1220796),
//           infoWindow:
//               InfoWindow(title: "From Where", snippet: "current Location")));
//     });
//   }

//   Completer<GoogleMapController> _controllerGoogleMap = Completer();
//   late GoogleMapController newGoogleMapController;

//   Position? currentPosition;
//   var geolocator = Geolocator();
//   void locatePosition() async {
//     Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high);
//     LatLng latLngpPosition = LatLng(position.latitude, position.longitude);

//     CameraPosition cameraPosition =
//         new CameraPosition(target: latLngpPosition, zoom: 14);
//     newGoogleMapController
//         .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

//     setState(() {
//       marker.add(Marker(
//           markerId: MarkerId('origin'),
//           position: latLngpPosition,
//           infoWindow: InfoWindow(title: "Where to", snippet: "aaa")));
//     });
//   }

//   void locatePositionfinal() async {
//     setState(() {
//       Marker(
//         markerId: const MarkerId('destination'),
//         infoWindow: const InfoWindow(title: 'Destination'),
//         icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
//         position: LatLng(24.9393199, 67.1220796),
//       );
//     });
//   }

//   static final CameraPosition _kGooglePlex =
//       CameraPosition(target: LatLng(24.9393199, 67.1220796), zoom: 12);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           GoogleMap(
//             mapType: MapType.normal,
//             onMapCreated: _onMapCreated,
//             markers: marker,
//             initialCameraPosition: _kGooglePlex,
//             myLocationButtonEnabled: true,
//             zoomGesturesEnabled: true,
//             zoomControlsEnabled: false,
//           ),
//           Positioned(
//               child: ListTile(
//             leading: Icon(
//               Icons.menu,
//               color: Constants.ubl,
//             ),
//             title: Text(
//               "Book Your Ride",
//               style: TextStyle(color: Constants.grey),
//             ),
//           )),
//           Positioned(
//             right: 0,
//             left: 0,
//             top: MediaQuery.of(context).size.height * 0.1,
//             child: Align(
//               alignment: Alignment.bottomCenter,
//               child: Container(
//                 width: MediaQuery.of(context).size.width * 0.78,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Column(
//                   children: [
//                     TextField(
//                       style: TextStyle(color: Constants.grey),
//                       decoration: InputDecoration(
//                         contentPadding: EdgeInsets.all(10.0),
//                         fillColor: Constants.grey,
//                         filled: true,
//                         border: InputBorder.none,
//                         prefixIcon: IconButton(
//                           icon: Icon(
//                             Icons.circle,
//                             color: Constants.grey,
//                             size: 16,
//                           ),
//                           onPressed: () {},
//                         ),
//                         suffixIcon: IconButton(
//                           icon: Icon(Icons.location_on),
//                           color: Constants.grey,
//                           onPressed: () {
//                             locatePosition();
//                           },
//                         ),
//                         suffixStyle: const TextStyle(color: Colors.green),
//                       ),
//                     ),
//                     Container(
//                         alignment: Alignment.centerLeft,
//                         width: MediaQuery.of(context).size.width,
//                         color: Constants.grey,
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 12.0),
//                           child: Icon(
//                             Icons.more_vert,
//                             color: Constants.ubl,
//                           ),
//                         )),
//                     TextField(
//                       style: TextStyle(color: Constants.grey),
//                       decoration: InputDecoration(
//                         contentPadding: EdgeInsets.all(10.0),
//                         fillColor: Constants.grey,
//                         filled: true,
//                         border: InputBorder.none,
//                         prefixIcon: IconButton(
//                           icon: Icon(
//                             Icons.circle,
//                             color: Constants.grey,
//                             size: 16,
//                           ),
//                           color: Constants.grey,
//                           onPressed: () {},
//                         ),
//                         suffixIcon: IconButton(
//                           icon: Icon(Icons.favorite_border,
//                               color: Constants.grey),
//                           onPressed: () {
//                             locatePositionfinal();
//                           },
//                         ),
//                         suffixStyle: TextStyle(color: Constants.grey),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 0,
//             right: 0,
//             bottom: 0,
//             child: Column(children: [
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             padding: EdgeInsets.all(
//                                 MediaQuery.of(context).size.width * 0.05),
//                             primary: Constants.grey,
//                           ),
//                           onPressed: () {},
//                           child: Wrap(children: [
//                             Text("Payment mode "),
//                             PopupMenuButton(
//                                 child: Text(
//                                   "Wallet",
//                                   style: TextStyle(color: Constants.grey),
//                                 ),
//                                 itemBuilder: (context) => [
//                                       PopupMenuItem(
//                                         child: ListTile(
//                                           contentPadding: EdgeInsets.all(0),
//                                           leading: Icon(Icons.money),
//                                           title: Text("Cash"),
//                                         ),
//                                         value: 1,
//                                       ),
//                                       PopupMenuItem(
//                                         child: ListTile(
//                                           contentPadding: EdgeInsets.all(0),
//                                           leading: Icon(
//                                             Icons.wallet_membership,
//                                           ), // your icon
//                                           title: Text("Wallet"),
//                                         ),
//                                         value: 2,
//                                       )
//                                     ]),
//                           ])),
//                     ),
//                     Expanded(
//                       child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             padding: EdgeInsets.all(
//                                 MediaQuery.of(context).size.width * 0.05),
//                             primary: Constants.grey,
//                           ),
//                           onPressed: () {},
//                           child: Wrap(children: [
//                             Text("Passenger "),
//                             PopupMenuButton(
//                                 child: Text(
//                                   "1 Person",
//                                   style: TextStyle(color: Constants.grey),
//                                 ),
//                                 itemBuilder: (context) => [
//                                       PopupMenuItem(
//                                         child: Text("1 Person"),
//                                         value: 1,
//                                       ),
//                                       PopupMenuItem(
//                                         child: Text("2 People"),
//                                         value: 2,
//                                       ),
//                                       PopupMenuItem(
//                                         child: Text("3 People"),
//                                         value: 3,
//                                       ),
//                                       PopupMenuItem(
//                                         child: Text("4 People"),
//                                         value: 4,
//                                       )
//                                     ]),
//                           ])),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                   width: MediaQuery.of(context).size.width,
//                   child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         padding: EdgeInsets.all(
//                             MediaQuery.of(context).size.width * 0.06),
//                         primary: Constants.grey,
//                       ),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => Hospital()),
//                         );
//                       },
//                       child: Text("CONTINUE",
//                           style: TextStyle(
//                               letterSpacing: 6, color: Constants.blackcolor))))
//             ]),
//           ),
//         ],
//       ),
//     );
//   }
// }
