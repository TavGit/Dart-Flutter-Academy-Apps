import 'package:flutter/material.dart';
import 'package:myacademy_apps/feature/Pengenalan-Flutter/ApaItu-Flutter/apaitu_flutter.dart';

class IntroFlutterPages extends StatefulWidget {
  const IntroFlutterPages({super.key});

  @override
  State<IntroFlutterPages> createState() => _IntroFlutterPagesState();
}

class _IntroFlutterPagesState extends State<IntroFlutterPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 19, 120, 236),
        title: Text(
          'Pengenalan Framework Flutter',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ApaituFlutter()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color.fromARGB(255, 230, 0, 96),
                  width: 2,
                ),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: Icon(Icons.widgets, size: 40, color: Colors.blue),
                title: Text(
                  'Apa itu Flutter?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Framework buat apa?, dan kenapa penting?'),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color.fromARGB(255, 43, 255, 0),
                  width: 2,
                ),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: Icon(Icons.star, size: 40, color: Colors.blueGrey),
                title: Text(
                  'Keunggalan framework Flutter',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Kenapa banyak yang make flutter?'),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color.fromARGB(255, 135, 22, 211),
                  width: 2,
                ),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: Icon(Icons.build, size: 40, color: Colors.deepOrange),
                title: Text(
                  'Cara kerja framework Flutter',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Apat itu widget?, dll, secara singkat'),
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
