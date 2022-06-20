import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';

import '../../Constants/constants.dart';

class CalendarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CalendarScreenState();
  }
}

class _CalendarScreenState extends State<CalendarScreen> {
  List<NeatCleanCalendarEvent> _todaysEvents = [
    NeatCleanCalendarEvent('Event A',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 10, 0),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 12, 0),
        description: 'A special event',
        color: Colors.blue[700]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.mainColorWhite,
      appBar: AppBar(
        backgroundColor: Constants.ubl,
        title: Text(
          "Book Appointment",
          style: TextStyle(color: Constants.mainColorWhite),
        ),
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
      body: Container(
        child: Calendar(
          startOnMonday: true,
          weekDays: ['Mon', 'Tues', 'Wed', 'Thr', 'Fri', 'Sat', 'Sun'],
          //   eventsList: _eventList,
          isExpandable: true,
          eventDoneColor: Colors.green,
          selectedColor: Colors.pink,
          selectedTodayColor: Colors.green,
          todayColor: Colors.blue,
          eventColor: null,
          allDayEventText: 'Ganztägig',
          multiDayEndText: 'Ende',
          isExpanded: true,
          expandableDateFormat: 'EEEE, dd. MMMM yyyy',
          datePickerType: DatePickerType.date,
          dayOfWeekStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w800, fontSize: 11),
        ),
      ),
    );
  }
}
