import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class MainFunction extends StatelessWidget {
  const MainFunction({super.key});

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
                'Main Function Dart',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text('Mengenal Main Function'),
              SizedBox(height: 10),
            ],
          ),
        ),
        backgroundColor: Colors.amber,
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
                'Main Function merupakan fungsi utama yang akan dieksekusi oleh dart',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textAlign: TextAlign.center,
                'Kode Main Function',
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 26, 177, 12),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            HighlightView(
              '''
void main() {}
                ''',
              language: 'dart',
              theme: atomOneDarkTheme,
              padding: EdgeInsets.all(12),
              textStyle: TextStyle(fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textAlign: TextAlign.center,
                'Function Print',
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 26, 177, 12),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('''
Print adalah perintah untuk menampilkan sebuah teks/tipe data string.
dimana data tersebut bisa menggunakan, 
kutip satu ( ' ' ) atau kutip dua ( " " )
                ''', style: TextStyle(fontSize: 16)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Contoh: ', style: TextStyle(fontSize: 16)),
            ),
            HighlightView(
              '''
print('hello world');
                ''',
              language: 'dart',
              theme: atomOneDarkTheme,
              padding: EdgeInsets.all(12),
              textStyle: TextStyle(fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Atau', style: TextStyle(fontSize: 16)),
            ),
            HighlightView(
              '''
print("hello world");
                ''',
              language: 'dart',
              theme: atomOneDarkTheme,
              padding: EdgeInsets.all(12),
              textStyle: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
