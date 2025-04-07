import 'package:flutter/material.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Dart/Dewa-Dart/Dewa.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Dart/Pemula-Dart/Pemula.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Dart/Sepuh-Dart/Sepuh.dart';

class DokumentasiDart extends StatefulWidget {
  const DokumentasiDart({super.key});

  @override
  State<DokumentasiDart> createState() => _DokumentasiDartState();
}

class _DokumentasiDartState extends State<DokumentasiDart> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dokumentasi Dart', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          bottom: TabBar(
            labelColor: const Color.fromARGB(221, 3, 212, 202),
            indicatorColor: const Color.fromARGB(255, 0, 248, 12),
            indicatorWeight: 3,
            tabs: [
              Tab(
                text: 'Pemula',
                icon: Icon(Icons.school, color: Colors.blue,),
              ),
              Tab(
                text: 'Sepuh',
                icon: Icon(Icons.star, color: Colors.amber,),
              ),
              Tab(
                text: 'Dewa',
                icon: Icon(Icons.emoji_events, color:  Color.fromARGB(255, 247, 17, 1),),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Pemula(),
            Sepuh(),
            Dewa(),
          ],
        ),
      ),
    );
  }
}
