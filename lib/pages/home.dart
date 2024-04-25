import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [

        ],
      ),
      drawer: Drawer(

      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(
        'Miteinander',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.blue,
      actions: [
        ElevatedButton(onPressed: () {

        }, 
        child: Text('A'))
      ],
    );
  }
}