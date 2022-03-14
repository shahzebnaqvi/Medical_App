import 'package:flutter/material.dart';
import 'package:medical_app/Widgets/home_widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
          child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        color: Color(0xFF2196F3),
        child: ListView(
          children: [
            GridView.builder(
                shrinkWrap: true,
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 160, crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.all(2),
                      child: containericon(context,
                          Icons.document_scanner_rounded, "ee", Colors.green));
                }),
          ],
        ),
      )),
    );
  }
}
