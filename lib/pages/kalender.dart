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
            child:
              switch (calenderView) {
                "week" =>
                  SfCalendar(
                    view: CalendarView.week,
                  ),
                "month" =>
                  SfCalendar(
                    view: CalendarView.day,
                  ),
                _ =>
                  SfCalendar(
                    view: CalendarView.day,
                  ),
              }
          ),
        ],
      )
    );
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