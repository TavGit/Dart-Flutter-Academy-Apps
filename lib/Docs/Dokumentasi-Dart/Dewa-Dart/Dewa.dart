import 'package:flutter/material.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Dart/Dewa-Dart/Property-Dart/Increment-Decrement/incre-decre.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Dart/Dewa-Dart/Property-Dart/Konversi-TipeData/konversi.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Dart/Dewa-Dart/Property-Dart/Operator-Aritmatika/aritmatika.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Dart/Dewa-Dart/Property-Dart/Operator-Logika/logika.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Dart/Dewa-Dart/Property-Dart/Operator-Penugasaan/penugasaan.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Dart/Dewa-Dart/Property-Dart/Operator-Perbandingan/perbandingan.dart';

class Dewa extends StatefulWidget {
  const Dewa({super.key});

  @override
  State<Dewa> createState() => _DewaState();
}

class _DewaState extends State<Dewa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Konversi()),
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
                  leading: Icon(Icons.all_inclusive, size: 40, color: const Color.fromARGB(255, 52, 204, 21)),
                  title: Text(
                    'Konversi Tipe Data',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Cara Konversi Tipe Data di Dart'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Aritmatika()),
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
                  leading: Icon(Icons.calculate, size: 40, color: const Color.fromARGB(255, 189, 21, 204)),
                  title: Text(
                    'Operator Aritmatika',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Mengenal Operator Aritmatika di Dart'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Perbandingan()),
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
                  leading: Icon(Icons.menu, size: 40, color: const Color.fromARGB(255, 21, 204, 149)),
                  title: Text(
                    'Operator Perbandingan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Mengenal Operator Perbandingan di Dart'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Penugasaan()),
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
                  leading: Icon(Icons.assignment, size: 40, color: const Color.fromARGB(255, 204, 192, 21)),
                  title: Text(
                    'Operator Penugasaan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Mengenal Operator Penugasaan di Dart'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Logika()),
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
                  leading: Icon(Icons.data_object, size: 40, color: const Color.fromARGB(255, 245, 0, 224)),
                  title: Text(
                    'Operator Logika',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Mengenal Operator Logika di Dart'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IncreDecre()),
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
                  leading: Icon(Icons.add, size: 40, color: const Color.fromARGB(255, 204, 21, 91)),
                  title: Text(
                    'Increment dan Decrement',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Mengenal Increment dan Decrement'),
                  trailing: Icon(Icons.remove, size: 40, color: const Color.fromARGB(255, 204, 21, 91)),
                ),
              ),
            ),
        ],
      ),
    );
  }
}