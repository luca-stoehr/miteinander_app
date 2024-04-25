import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Buchclub extends StatelessWidget{
  const Buchclub({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
        'Buchclub',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.blue,
      ),
    );
  }
}