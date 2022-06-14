import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medical_app/Constants/constants.dart';
import 'package:medical_app/Screens/Book_Doctors_Appoinment/Hospital.dart';
import 'package:medical_app/Screens/Book_Doctors_Appoinment/mapstyle.dart';

class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Maps> {
  late GoogleMapController _googleMapController;

  String googleAPiKey = "AIzaSyCg1UJ5-pBUCmjMZAOOnSXFYrxTrN3HYi8";
  Set<Marker> marker = {};
  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];
  PolylinePoints polylinePoints = PolylinePoints();

  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  void _onMapCreated(GoogleMapController controller) {
    controller.setMapStyle(Mapstyle.mapStyle);
    _controllerGoogleMap.complete(controller);
    newGoogleMapController = controller;

    setState(() {
      marker.add(Marker(
          markerId: MarkerId('origin'),
          position: LatLng(24.9393199, 67.1220796),
          infoWindow:
              InfoWindow(title: "From Where", snippet: "current Location")));
    });
  }

  Completer<GoogleMapController> _controllerGoogleMap = Completer();
  late GoogleMapController newGoogleMapController;

  Position? currentPosition;
  var geolocator = Geolocator();
  void locatePosition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    LatLng latLngpPosition = LatLng(position.latitude, position.longitude);

    CameraPosition cameraPosition =
        new CameraPosition(target: latLngpPosition, zoom: 14);
    newGoogleMapController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

    setState(() {
      marker.add(Marker(
          markerId: MarkerId('origin'),
          position: latLngpPosition,
          infoWindow: InfoWindow(title: "Where to", snippet: "aaa")));
    });
  }

  void locatePositionfinal() async {
    setState(() {
      Marker(
        markerId: const MarkerId('destination'),
        infoWindow: const InfoWindow(title: 'Destination'),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        position: LatLng(24.9393199, 67.1220796),
      );
    });
  }

  static final CameraPosition _kGooglePlex =
      CameraPosition(target: LatLng(24.9393199, 67.1220796), zoom: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            onMapCreated: _onMapCreated,
            markers: marker,
            initialCameraPosition: _kGooglePlex,
            myLocationButtonEnabled: true,
            zoomGesturesEnabled: true,
            zoomControlsEnabled: false,
          ),
          Positioned(
              child: ListTile(
            leading: Icon(
              Icons.menu,
              color: Constants.ubl,
            ),
            title: Text(
              "Book Your Ride",
              style: TextStyle(color: Constants.grey),
            ),
          )),
          Positioned(
            right: 0,
            left: 0,
            top: MediaQuery.of(context).size.height * 0.1,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.78,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(color: Constants.grey),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        fillColor: Constants.grey,
                        filled: true,
                        border: InputBorder.none,
                        prefixIcon: IconButton(
                          icon: Icon(
                            Icons.circle,
                            color: Constants.grey,
                            size: 16,
                          ),
                          onPressed: () {},
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.location_on),
                          color: Constants.grey,
                          onPressed: () {
                            locatePosition();
                          },
                        ),
                        suffixStyle: const TextStyle(color: Colors.green),
                      ),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        width: MediaQuery.of(context).size.width,
                        color: Constants.grey,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Icon(
                            Icons.more_vert,
                            color: Constants.ubl,
                          ),
                        )),
                    TextField(
                      style: TextStyle(color: Constants.grey),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        fillColor: Constants.grey,
                        filled: true,
                        border: InputBorder.none,
                        prefixIcon: IconButton(
                          icon: Icon(
                            Icons.circle,
                            color: Constants.grey,
                            size: 16,
                          ),
                          color: Constants.grey,
                          onPressed: () {},
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.favorite_border,
                              color: Constants.grey),
                          onPressed: () {
                            locatePositionfinal();
                          },
                        ),
                        suffixStyle: TextStyle(color: Constants.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.width * 0.05),
                            primary: Constants.grey,
                          ),
                          onPressed: () {},
                          child: Wrap(children: [
                            Text("Payment mode "),
                            PopupMenuButton(
                                child: Text(
                                  "Wallet",
                                  style: TextStyle(color: Constants.grey),
                                ),
                                itemBuilder: (context) => [
                                      PopupMenuItem(
                                        child: ListTile(
                                          contentPadding: EdgeInsets.all(0),
                                          leading: Icon(Icons.money),
                                          title: Text("Cash"),
                                        ),
                                        value: 1,
                                      ),
                                      PopupMenuItem(
                                        child: ListTile(
                                          contentPadding: EdgeInsets.all(0),
                                          leading: Icon(
                                            Icons.wallet_membership,
                                          ), // your icon
                                          title: Text("Wallet"),
                                        ),
                                        value: 2,
                                      )
                                    ]),
                          ])),
                    ),
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.width * 0.05),
                            primary: Constants.grey,
                          ),
                          onPressed: () {},
                          child: Wrap(children: [
                            Text("Passenger "),
                            PopupMenuButton(
                                child: Text(
                                  "1 Person",
                                  style: TextStyle(color: Constants.grey),
                                ),
                                itemBuilder: (context) => [
                                      PopupMenuItem(
                                        child: Text("1 Person"),
                                        value: 1,
                                      ),
                                      PopupMenuItem(
                                        child: Text("2 People"),
                                        value: 2,
                                      ),
                                      PopupMenuItem(
                                        child: Text("3 People"),
                                        value: 3,
                                      ),
                                      PopupMenuItem(
                                        child: Text("4 People"),
                                        value: 4,
                                      )
                                    ]),
                          ])),
                    ),
                  ],
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.06),
                        primary: Constants.grey,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Hospital()),
                        );
                      },
                      child: Text("CONTINUE",
                          style: TextStyle(
                              letterSpacing: 6, color: Constants.blackcolor))))
            ]),
          ),
        ],
      ),
    );
  }
}
