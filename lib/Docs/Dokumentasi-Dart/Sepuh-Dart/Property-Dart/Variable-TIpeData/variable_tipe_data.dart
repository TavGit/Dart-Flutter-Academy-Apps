import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class VariableTipeData extends StatelessWidget {
  const VariableTipeData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dart: Sepuh',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Variable dan Tipe data Dart',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text('Mengenal Variable dan 5 Tipe Data'),
              SizedBox(height: 10),
            ],
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pengertian Variable dan Tipe Data',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '• Variabel adalah tempat untuk menyimpan data sementara dalam program. Kita bisa memberi nama variabel untuk mengakses nilainya kapan saja.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5),
              Text(
                '• Tipe data menunjukkan jenis nilai yang dapat disimpan dalam sebuah variabel, seperti teks, angka, bilangan desimal, dan sebagainya.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Contoh Variable: ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              HighlightView(
                '''
void main() {

 // nama adalah sebuah variable // 

  String nama = "Gustav"; 
  
}

                ''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '5 Tipe Data beserta fungsinya',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text('1. String: Menyimpan teks', style: TextStyle(fontSize: 16)),
              SizedBox(height: 10),
              HighlightView(
                '''
void main() {
  String nama = "Gustav";
}
                ''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '2. Integer: Menyimpan angka bulat',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              HighlightView(
                '''
void main() {
  int umur = 18;
}
                ''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '3. Double: Menyimpan angka desimal',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              HighlightView(
                '''
void main() {
  double tinggi = 1.75;
}
                ''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '4. Bool/Boolean: Menyimpan nilai true(benar) atau false(salah)',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              HighlightView(
                '''
void main() {
  bool tebak = true;
}
                ''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '5. Dynamic: Menyimpan berbagai jenis nilai/tipe data',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              HighlightView(
                '''
void main() {
  dynamic hobi = "ngoding";
  dynamic tahunsekarang = 2025;
  dynamic angka = 0.5;
  dynamic benar/salah = true/false;
}
                ''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
