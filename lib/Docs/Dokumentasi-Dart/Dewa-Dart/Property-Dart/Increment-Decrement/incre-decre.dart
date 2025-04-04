import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class IncreDecre extends StatelessWidget {
  const IncreDecre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dart: Dewa 🏆',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Increment dan Decrement',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              Text('Apa itu Increment dan Decrement?'),
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
              Text(
                'Increment dan Decrement',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Increment (penambahan) dan Decrement (pengurangan) digunakan untuk menambah atau mengurangi nilai dari sebuah variabel sebanyak 1.\n',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '⚙️ Operator:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                '''
++a → Pre-increment
a++ → Post-increment
--a → Pre-decrement
a-- → Post-decrement
''',
                style: TextStyle(fontSize: 16),
              ),
              Divider(),
              Text(
                '🔍 Penjelasan Pre vs Post:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                '''
✅ Pre-increment/decrement (`++a` / `--a`):
• Nilai variabel diubah terlebih dahulu
• Lalu digunakan dalam ekspresi

✅ Post-increment/decrement (`a++` / `a--`):
• Nilai variabel digunakan dulu
• Baru setelah itu diubah

Contoh gampang:
''',
                style: TextStyle(fontSize: 16),
              ),
              HighlightView(
                '''
int a = 5;

print(++a); // Output: 6 → a ditambah dulu, lalu dicetak
print(a++); // Output: 6 → a dicetak dulu, lalu ditambah
print(a);   // Output: 7 → hasil akhir setelah post-increment
''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              Divider(),
              Text(
                'Contoh Penggunaan Increment:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              HighlightView(
                '''
void main() {
  int angka = 10;

  print(++angka); // Pre-increment: 11
  print(angka++); // Post-increment: 11
  print(angka);   // Nilai akhir: 12
}
''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              Divider(),
              Text(
                'Contoh Penggunaan Decrement:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              HighlightView(
                '''
void main() {
  int nilai = 8;

  print(--nilai); // Pre-decrement: 7
  print(nilai--); // Post-decrement: 7
  print(nilai);   // Nilai akhir: 6
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
