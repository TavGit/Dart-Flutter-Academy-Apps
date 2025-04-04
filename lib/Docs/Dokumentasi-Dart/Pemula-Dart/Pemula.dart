import 'package:flutter/material.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Dart/Pemula-Dart/Property-Dart/Buat-Project/buat_project.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Dart/Pemula-Dart/Property-Dart/Cara-Install/cara_install.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Dart/Pemula-Dart/Property-Dart/Kode-Pertama/kode_pertama.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Dart/Pemula-Dart/Property-Dart/Komentar/komentar.dart';

class Pemula extends StatefulWidget {
  const Pemula({super.key});

  @override
  State<Pemula> createState() => _PemulaState();
}

class _PemulaState extends State<Pemula> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CaraInstall()),
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
                leading: Icon(Icons.download, size: 40, color: Colors.blue),
                title: Text(
                  'Dart SDK dan Cara Instal Dart',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Cara instal dart'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BuatProject()),
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
                leading: Icon(Icons.create, size: 40, color: Colors.blueGrey),
                title: Text(
                  'Cara membuat project Dart',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Cara membuat project Dart di terminal'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (contex) => KodePertama()),
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
                leading: Icon(Icons.code, size: 40, color: Colors.deepOrange),
                title: Text(
                  'Kode Pertama Dart',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Membuat kode pertama dart, hello world'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Komentar()),
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
                leading: Icon(Icons.code_off, size: 40, color: const Color.fromARGB(255, 21, 204, 103)),
                title: Text(
                  'Komentar di dart',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Mengenal komentar di Dart'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}