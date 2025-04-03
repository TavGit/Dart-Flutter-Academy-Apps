import 'package:flutter/material.dart';
import 'package:myacademy_apps/feature/Pengenalan-Dart/Kelebihan-Dart/kelebihan.dart';
import 'package:myacademy_apps/feature/Pengenalan-Dart/Pengertian-Dart/pengertian.dart';
import 'package:myacademy_apps/feature/Pengenalan-Dart/Sejarah-Dart/sejarah.dart';

class IntroDartPages extends StatefulWidget {
  const IntroDartPages({super.key});

  @override
  State<IntroDartPages> createState() => _IntroDartPagesState();
}

class _IntroDartPagesState extends State<IntroDartPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 204, 19, 236),
        title: Text(
          'Pengenalan Dart',
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
                MaterialPageRoute(builder: (context) => SejarahDart()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.deepPurpleAccent, width: 2),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: Icon(Icons.article, size: 40, color: Colors.blue),
                title: Text(
                  'Sejarah Bahasa Pemrogramman Dart',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Kapan?, dan Siapa Pencipta Dart?'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PengertianDart()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.deepOrange, width: 2),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: Icon(Icons.info, size: 40, color: Colors.blueGrey),
                title: Text(
                  'Pengertian Bahasa Pemrogramman Dart',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Dart itu bahasa pemrogramman buat apa?'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (contex) => KelebihanDart()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.redAccent, width: 2),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: Icon(Icons.bolt, size: 40, color: Colors.deepOrange),
                title: Text(
                  'Kelebihan Bahasa Pemrogramman Dart',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Stabil untuk membangun aplikasi real time'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
