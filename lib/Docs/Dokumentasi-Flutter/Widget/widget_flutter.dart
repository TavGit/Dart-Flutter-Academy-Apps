import 'package:flutter/material.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Flutter/Widget/Statefull/statefull.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Flutter/Widget/Stateless/stateless.dart';

class WidgetFlutter extends StatelessWidget {
  const WidgetFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Widget Flutter',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10,),
          InkWell(
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Stateless()),
                );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue, width: 2),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: Icon(Icons.description, size: 40, color: const Color.fromARGB(255, 33, 161, 165)),
                title: Text(
                  'Stateless Widget',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Mengenal Stateless Widget'),
              ),
            ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Statefull()),
                );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue, width: 2),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: Icon(Icons.autorenew, size: 40, color: const Color.fromARGB(255, 226, 58, 7)),
                title: Text(
                  'Statefull Widget',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Mengenal Statefull Widget'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}