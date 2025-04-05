import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class StringInterpolan extends StatelessWidget {
  const StringInterpolan({super.key});

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
                'String Interpolan',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text('Mengenal String Interpolan'),
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                textAlign: TextAlign.center,
                'String Interpolan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'String interpolan adalah tipe data string yang bisa menggabungkan dua variable sekaligus atau lebih',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                'Berbeda dengan tipe data String',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                'String interpolan bisa menggabungkan nilai dari variable atau ekspresi lagnsung ke dalam string',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                'Bisa menggunakan dua cara:\n1. \${isi variable}\n2. \$isivariable',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              Text('Contoh Code: ', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              HighlightView(
                '''
void main() {

  String nama = "Gustav";
  String kota = "Bekasi";

  var salam = 'Hallo Perkenalkan nama saya \$nama , saya tinggal di \$kota';
  
}

                ''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
