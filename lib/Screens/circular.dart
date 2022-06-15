import 'package:flutter/material.dart';
import 'package:circular_menu/circular_menu.dart';

class Circularbutton extends StatefulWidget {
  @override
  _CircularbuttonState createState() => _CircularbuttonState();
}

class _CircularbuttonState extends State<Circularbutton> {
  String _colorName = 'No';
  Color _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CircularMenu(
          alignment: Alignment.bottomCenter,
          toggleButtonColor: Colors.pink,
          items: [
            CircularMenuItem(
                icon: Icons.home,
                color: Colors.green,
                onTap: () {
                  setState(() {
                    _color = Colors.green;
                    _colorName = 'Green';
                  });
                }),
            CircularMenuItem(
                icon: Icons.search,
                color: Colors.blue,
                onTap: () {
                  setState(() {
                    _color = Colors.blue;
                    _colorName = 'Blue';
                  });
                }),
            CircularMenuItem(
                icon: Icons.settings,
                color: Colors.orange,
                onTap: () {
                  setState(() {
                    _color = Colors.orange;
                    _colorName = 'Orange';
                  });
                }),
            CircularMenuItem(
                icon: Icons.chat,
                color: Colors.purple,
                onTap: () {
                  setState(() {
                    _color = Colors.purple;
                    _colorName = 'Purple';
                  });
                }),
            CircularMenuItem(
                icon: Icons.notifications,
                color: Colors.brown,
                onTap: () {
                  setState(() {
                    _color = Colors.brown;
                    _colorName = 'Brown';
                  });
                })
          ],
        ),
      ),
    );
  }
}
