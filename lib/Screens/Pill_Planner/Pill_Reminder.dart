import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../Constants/constants.dart';

class PillRemainder extends StatefulWidget {
  const PillRemainder({Key? key}) : super(key: key);

  @override
  State<PillRemainder> createState() => _PillRemainderState();
}

class _PillRemainderState extends State<PillRemainder> {
  final List<String> imagesList = [

    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/11/18/19/00/breads-1836411_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.mainColorWhite,
      appBar: AppBar(
          backgroundColor: Constants.mainColor1,
          title: Text(
            "Pill Remainder",
            style: TextStyle(color: Constants.mainColorWhite),
          )),
      body: ListView(children: [
        Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            // left: MediaQuery.of(context).size.width * 0.090,
            // right: MediaQuery.of(context).size.width * 0.040,
          ),
          child: Center(
            child: CircleAvatar(
              backgroundColor: Constants.bluecolor,
              radius: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PillRemainder()));
                    },
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ),
                  Text("Add Reminder",
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
         Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.001,
          bottom:MediaQuery.of(context).size.height*0.02,
          left: MediaQuery.of(context).size.height*0.001,

          right: MediaQuery.of(context).size.height*0.001,
          ),
          margin:EdgeInsets.only(top:MediaQuery.of(context).size.height*0.001,
          bottom:MediaQuery.of(context).size.height*0.001,
             left: MediaQuery.of(context).size.height * 0.02,
            right: MediaQuery.of(context).size.height * 0.02,
          ),
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(05),
            color: Constants.mainColorWhite,
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.2),
                spreadRadius: 0.1,
                blurRadius: 2,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                children:[
              Icon(Icons.circle,color: Constants.ligtbluecolor,),
              SizedBox(width: MediaQuery.of(context).size.width*0.02),
              Text("Today, 04:40 PM",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
           
              
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 26)),
                 Text("Panadol Paracetamol .... ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500))
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
             Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 26)),
                 Text("Take Before Meal For  07 Days ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500))
            ],
          ) 
          
      ])
        ),

        Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.015,
            left: MediaQuery.of(context).size.height * 0.04,
            right: MediaQuery.of(context).size.height * 0.02,
            bottom: MediaQuery.of(context).size.height * 0.01,
          ),
          child: Row(
            children: [
          Text(
            "My Mart",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          )]),
            
          ),
        
       
        // Shop Slider
        shopcrausel(),
        Container(
          margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.height * 0.02,
            right: MediaQuery.of(context).size.height * 0.02,
            top: MediaQuery.of(context).size.height * 0.01,
            bottom: MediaQuery.of(context).size.height * 0.008,
          ),
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            bottom: MediaQuery.of(context).size.height * 0.02,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(05),
            color: Constants.bannercolor,
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.2),
                spreadRadius: 0.1,
                blurRadius: 2,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Text("Voucher",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Nice Jobs!",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text("Discount to celebrate this ",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      )),
                  Text("50% OFF",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ))
                ],
              ),
            ],
          ),
        ),
       
      ]),
    );
  }

// Shop CarouselSlider
  Widget shopcrausel() {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 16/8,

        enlargeCenterPage: true,    
 
        scrollDirection: Axis.horizontal,

      ),
      items: imagesList
          .map(
            (item) => Padding(
              padding: const EdgeInsets.all(0.0),
              child: Card(
                elevation: 6.0,
                shadowColor: Constants.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Image.network(
                        item,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
