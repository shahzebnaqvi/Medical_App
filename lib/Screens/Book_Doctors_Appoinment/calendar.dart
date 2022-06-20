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
    return Container(
      child: Calendar(
        startOnMonday: true,
        weekDays: ['Mon', 'Tues', 'Wed', 'Thr', 'Fri', 'Sat', 'Sun'],
        //   eventsList: _eventList,
        // isExpandable: true,
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
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart'; //this is an external package for formatting date and time

// class DatePicker extends StatefulWidget {
//   @override
//   _DatePickerState createState() => _DatePickerState();
// }

// class _DatePickerState extends State<DatePicker> {
//   DateTime? _selectedDate;

//   //Method for showing the date picker
//   void _pickDateDialog() {
//     showDatePicker(
//             context: context,
//             initialDate: DateTime.now(),
//             //which date will display when user open the picker
//             firstDate: DateTime(1950),
//             //what will be the previous supported year in picker
//             lastDate: DateTime
//                 .now()) //what will be the up to supported date in picker
//         .then((pickedDate) {
//       //then usually do the future job
//       if (pickedDate == null) {
//         //if user tap cancel then this function will stop
//         return;
//       }
//       setState(() {
//         //for rebuilding the ui
//         _selectedDate = pickedDate;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         ElevatedButton(child: Text('Add Date'), onPressed: _pickDateDialog),
//         SizedBox(height: 20),
//         Text(_selectedDate == null //ternary expression to check if date is null
//             ? 'No date was chosen!'
//             : 'Picked Date: ${DateFormat.yMMMd().format(_selectedDate!)}'),
//       ],
//     );
//   }
// }
