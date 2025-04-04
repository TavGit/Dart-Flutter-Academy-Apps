import 'package:flutter/material.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Dart/Sepuh-Dart/Property-Dart/Dart-Main-Function/main_function.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Dart/Sepuh-Dart/Property-Dart/Kata-Kunci-Dart/kata-kunci.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Dart/Sepuh-Dart/Property-Dart/String-Interpolan/string_interpolan.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Dart/Sepuh-Dart/Property-Dart/Variable-TIpeData/variable_tipe_data.dart';

class Sepuh extends StatefulWidget {
  const Sepuh({super.key});

  @override
  State<Sepuh> createState() => _SepuhState();
}

class _SepuhState extends State<Sepuh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainFunction()),
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
                  leading: Icon(Icons.align_vertical_center, size: 40, color: const Color.fromARGB(255, 15, 211, 120)),
                  title: Text(
                    'Dart Main Function',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Mengenal Main Function di Dart'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VariableTipeData()),
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
                  leading: Icon(Icons.menu_book, size: 40, color: const Color.fromARGB(255, 122, 21, 204)),
                  title: Text(
                    'Variable dan Tipe Data',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Mengenal variable dan tipe data di Dart'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KataKunciDart()),
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
                  leading: Icon(Icons.key, size: 40, color: const Color.fromARGB(255, 204, 192, 21)),
                  title: Text(
                    'Kata Kunci di Dart',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Mengenal kata kunci (var,final,const dan late), di dart'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StringInterpolan()),
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
                  leading: Icon(Icons.chat_bubble, size: 40, color: const Color.fromARGB(255, 21, 70, 204)),
                  title: Text(
                    'String Interpolan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Mengenal String Interpolan di Dart'),
                ),
              ),
            ),
          ],
      ),
    );
  }
}