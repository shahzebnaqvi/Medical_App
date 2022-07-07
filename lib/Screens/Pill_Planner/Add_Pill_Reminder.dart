import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

import '../../Constants/constants.dart';
class AddPillReminder extends StatefulWidget {
  const AddPillReminder({Key? key}) : super(key: key);
  
  @override
  
  State<AddPillReminder> createState() => _AddPillReminderState();
}

class _AddPillReminderState extends State<AddPillReminder> {
  // ignore: deprecated_member_use

List<int> numberOfItems = <int>[];   

//For demonstrate purpose I have added five static items
void addItems() {
  numberOfItems.add(1);
  numberOfItems.add(2);
  numberOfItems.add(3);
  numberOfItems.add(4);
  numberOfItems.add(5);
}
@override
void initState() {
  super.initState();
  addItems();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Constants.mainColorWhite,
      appBar: AppBar(
          backgroundColor: Constants.mainColor1,
          title: Text(
            "Add Pill Remainder",
            style: TextStyle(color: Constants.mainColorWhite),
          )),
          body:     ListView(children: [

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
       child:    
          Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.04,
                   right: MediaQuery.of(context).size.width * 0.25,
                   left: MediaQuery.of(context).size.width * 0.02,

                ),
                  decoration: BoxDecoration(
                    color: Constants.lightColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        MediaQuery.of(context).size.width * 0.04)
                        ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
 
               
                   
                
                    child: TextField(
                      autofocus: false,
                      style:TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                        decoration: InputDecoration(
                        filled: true,
                        suffixIcon: Icon(Icons.search),
                        fillColor: Colors.white,
                        hintText: 'Search Medicine',
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
                  
            ),
            
          ])
                  )  ;
          
  }


}