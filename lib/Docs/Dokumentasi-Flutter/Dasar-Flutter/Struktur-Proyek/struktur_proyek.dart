import 'package:flutter/material.dart';

class StrukturProyek extends StatelessWidget {
  const StrukturProyek({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Struktur Proyek Flutter',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Struktur Proyek Flutter',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text('Seperti apa struktur proyek di dalam Flutter?'),
              SizedBox(height: 10),
            ],
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          buildCard(
            title: '📁 android/',
            description: 'Folder konfigurasi untuk membangun aplikasi di platform Android. Berisi file Gradle dan AndroidManifest.xml.',
          ),
          buildCard(
            title: '📁 ios/',
            description: 'Folder konfigurasi untuk platform iOS. Di sini juga ada file Info.plist.',
          ),
          buildCard(
            title: '📁 lib/',
            description: 'Tempat utama untuk menulis kode Dart dan UI aplikasi. File utama biasanya ada di main.dart.',
          ),
          buildCard(
            title: '📁 assets/',
            description: 'Tempat menyimpan gambar, font, dan file lain yang digunakan dalam aplikasi. Perlu didaftarkan di pubspec.yaml.',
          ),
          buildCard(
            title: '📄 pubspec.yaml',
            description: 'File konfigurasi utama. Untuk menambahkan dependency, assets, fonts, dan informasi proyek lainnya.',
          ),
          buildCard(
            title: '📁 test/',
            description: 'Berisi file untuk melakukan unit testing dan widget testing.',
          ),
        ],
      ),
    );
  }

  Widget buildCard({required String title, required String description}) {
    return Card(
      color: Colors.indigoAccent,
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        subtitle: Text(description, style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
