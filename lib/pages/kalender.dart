import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Kalender extends StatelessWidget {
  const Kalender({super.key});

  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          
        ],
      ),
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