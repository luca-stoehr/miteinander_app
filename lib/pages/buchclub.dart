import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sprintf/sprintf.dart';

class Buchclub extends StatelessWidget{
  Buchclub({super.key});
  var listOfMembers = ["you", "test"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15,),
            const Text(
              'Das Projekt',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold
              )
            ),
            const SizedBox(height: 10,),
            _theProject(),
            const SizedBox(height: 15,),
            const Text('Persönliche Favoriten'),
            const SizedBox(height: 10,),
            _favorites(),
            const SizedBox(height: 15,),
            const Text('Nachttisch'),
            const SizedBox(height: 10,),
            _nightstand()
          ]
        ),
      ),
      endDrawer: _members(),
    );
  }

  Drawer _members() {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 100,
            child: const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey
              ),
              child: Text(
                'Mitglieder',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              )
              
            ),
          ),
          for (var name in listOfMembers)
            ListTile(
              title: Text(name),
              onTap: () {
                
              },
            ),
          ListTile(
            title: const Text('Mitglied hinzufügen'),
            onTap: () {

            },
          )
        ],
      )
    );
  }

  Container _nightstand() {
    return Container(
              height: 200,
              child: Row(
                children: [
                  //implement Nachttisch here
                ],
              ),
            );
  }

  Container _favorites() {
    return Container(
              height: 200,
              child: Row(
                children: [
                  //for (var name in listOfMembers)
                                            // implement a top three list here
                ]
              ),
            );
  }

  Container _theProject() {
    return Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    
                  ),
                ]
              ),
            );
  }

  AppBar _appBar() {
    return AppBar(
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
    );
  }
}