import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Kalender extends StatefulWidget {
  const Kalender({super.key});

  @override
  State<Kalender> createState() => _KalenderState();
}

class _KalenderState extends State<Kalender> {
  var calenderView = "day";

  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          Row(
            children: [
              ElevatedButton(onPressed: () {
                setState(() {
                calenderView = "day";
                });
              }, 
              child: Text('Day')),
              ElevatedButton(onPressed: () {
                setState(() {
                calenderView = "week";
                });
              }, 
              child: Text('Week')),
              ElevatedButton(onPressed: () {
                setState(() {
                  calenderView = "month";
                });
              }, 
              child: Text('Month')),
            ],
          ),
          Container(
            child: SfCalendar(
              view: _calViewMode(),
              firstDayOfWeek: 1,              
            )
          ),
        ],
      )
    );
  }

  dynamic _calViewMode() {
    //problems with switch case not resolved
    
    switch (calenderView) {
      case "week":
        return CalendarView.week;
      case "month":
        return CalendarView.month;
      default:
        return CalendarView.week;
    }
  }

  AppBar _appBar() {
    return AppBar(
      title: Text('Kalender',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.blue
    );
  } 
}