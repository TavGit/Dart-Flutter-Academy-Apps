import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class Aritmatika extends StatelessWidget {
  const Aritmatika({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dart: Dewa 🏆 ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Operator Aritmatika',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text('Operator Aritmatika Dart'),
              SizedBox(height: 10),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 247, 17, 1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'Operator Aritmatika',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                'Operator Aritmatika di dalam bahasa pemrograman Dart hampir sama dengan bahasa pemrograman lainnya, hanya saja ada sedikit perbedaan.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 12),
              Text(
                'Berikut ini adalah jenis-jenis operator aritmatika:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Divider(),
              Text('1. Pertambahan (+)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              HighlightView(
                'var hasilTambah = 50 + 50; // Pertambahan',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              Divider(),
              Text('2. Pengurangan (-)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              HighlightView(
                'var hasilKurang = 50 - 50; // Pengurangan',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              Divider(),
              Text('3. Pengurangan Negatif (Expression)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              HighlightView(
                'var hasilKurangNegatif = 50 - (-50); // Pengurangan Negatif',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              Divider(),
              Text('4. Perkalian (*)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              HighlightView(
                'var hasilPerkalian = 50 * 50; // Perkalian',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              Divider(),
              Text('5. Pembagian (/) - hasil double', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              HighlightView(
                'var hasilBagiDouble = 6 / 50; // Pembagian, hasilnya double',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              Divider(),
              Text('6. Pembagian (~/) - hasil integer', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              HighlightView(
                'var hasilBagiInt = 50 ~/ 50; // Pembagian, hasilnya integer',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              Divider(),
              Text('7. Modulo (%) - sisa bagi', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              HighlightView(
                'var hasilSisaBagi = 50 % 50; // Sisa bagi',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              Divider(),
              SizedBox(height: 16),
              Text('Output:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              HighlightView(
                '''
print("Hasil =\\n"
    "hasilTambah = \$hasilTambah,\\n"
    "hasilKurang = \$hasilKurang,\\n"
    "hasilKurangNegatif = \$hasilKurangNegatif,\\n"
    "hasilPerkalian = \$hasilPerkalian,\\n"
    "hasilBagiDouble = \$hasilBagiDouble,\\n"
    "hasilBagiInt = \$hasilBagiInt,\\n"
    "hasilSisaBagi = \$hasilSisaBagi");
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
