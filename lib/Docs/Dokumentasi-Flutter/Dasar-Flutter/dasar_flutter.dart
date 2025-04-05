import 'package:flutter/material.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Flutter/Dasar-Flutter/CaraKerjaWIdget/cara_kerja_widget.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Flutter/Dasar-Flutter/Struktur-Proyek/struktur_proyek.dart';

class DasarFlutter extends StatelessWidget {
  const DasarFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dasar Flutter',
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
                  MaterialPageRoute(builder: (context) => StrukturProyek()),
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
                leading: Icon(Icons.folder_open, size: 40, color: Colors.deepOrange),
                title: Text(
                  'Struktur Proyek Flutter',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Mengenal Struktur Proyek Flutter, Seperti /lib,'),
              ),
            ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CaraKerjaWidget()),
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
                leading: Icon(Icons.compare_arrows, size: 40, color: Colors.green),
                title: Text(
                  'Cara Kerja Widget',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Stateless vs Statefull'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}