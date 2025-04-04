import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class Logika extends StatelessWidget {
  const Logika({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dart: Dewa 🏆', style: TextStyle(fontWeight: FontWeight.bold)),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Operator Logika', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black)),
              Text('Operator Logika Dart'),
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
              Text('Operator Logika', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text(
                'Operator logika digunakan untuk menggabungkan dua atau lebih ekspresi logika. Biasanya dipakai dalam kondisi (if, while, dll).',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text('Jenis-jenis Operator Logika:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              HighlightView(
                '''
// && : AND (dan)
// || : OR (atau)
// !  : NOT (kebalikan)
''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),

              SizedBox(height: 20),
              Text('Contoh Penggunaan Operator Logika:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),

              HighlightView(
                '''
bool a = true;
bool b = false;

print(a && b); // false karena salah satu false
''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              Divider(),

              HighlightView(
                '''
bool a = true;
bool b = false;

print(a || b); // true karena salah satu true
''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              Divider(),

              HighlightView(
                '''
bool a = false;

print(!a); // true karena NOT dari false adalah true
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
