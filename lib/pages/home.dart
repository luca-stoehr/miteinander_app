import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:miteinander_app/pages/buchclub.dart';
import 'package:miteinander_app/pages/kalender.dart';

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
        child: ListView(
          children: [
            SizedBox(
              height: 100,
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueGrey
                ),
                child: Text(
                  'Räume',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                )
                
              ),
            ),
            ListTile(
              title: const Text('Kalender'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Kalender())
                );
              },
            ),
            ListTile(
              title: const Text('Buchclub'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Buchclub())
                );
              },
            ),
            ListTile(
              title: const Text('Flimmerkiste'),
              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Daddeln'),
              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Sport'),
              onTap: () {

                Navigator.pop(context);
              },
            )
          ]
        )
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
        ElevatedButton(
          onPressed: () {

          }, 
          child: Text('A'),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              CircleBorder()
            )
          ),
        )
      ],
    );
  }
}