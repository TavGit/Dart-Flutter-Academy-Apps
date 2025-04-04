import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class KodePertama extends StatelessWidget {
  const KodePertama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dart: Pemula',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Membuat Kode Pertama Dart',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text('Yayy, Anda pertama kali membuat kode program dart'),
              SizedBox(height: 10),
            ],
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Langkah Pertama untuk membuat sebuah code program dart, kita membutuhkan yang nama nya, kode main function',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Kode main function nanti akan dibahas di Slide \'Sepuh\'',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Untuk sekarang kita hanya membuat code program dart (hello world) saja',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textAlign: TextAlign.center,
                'Hello World !!',
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 26, 177, 12),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Ayo kita buat sebuah code hello world!!',
                style: TextStyle(fontSize: 16),
              ),
            ),
            HighlightView(
              '''
void main() {
  print("Hello World");
}
                ''',
              language: 'dart',
              theme: atomOneDarkTheme,
              padding: EdgeInsets.all(12),
              textStyle: TextStyle(fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Output:\nHello World',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Dan yap, sekarang anda sudah berhasil membuat code dart secara sederhana.',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
