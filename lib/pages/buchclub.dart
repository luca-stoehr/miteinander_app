import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Buchclub extends StatelessWidget{
  Buchclub({super.key});
  List<String> listOfMembers = ["you", "test"];

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
          const SizedBox(
            height: 100,
            child: DrawerHeader(
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

  SizedBox _nightstand() {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: listOfMembers.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 200,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 81, 121, 154),
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Center(child: Text('Nachttisch von ${listOfMembers[index]}')),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 10,),
      ),
    );
  }

  SizedBox _favorites() {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: listOfMembers.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 200,
            decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Center(child: Text('Top 3 von ${listOfMembers[index]}')),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 10,),
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