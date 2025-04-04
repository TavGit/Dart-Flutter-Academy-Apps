import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class Penugasaan extends StatelessWidget {
  const Penugasaan({super.key});

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
              Text('Operator Penugasan', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black)),
              Text('Operator Penugasan Dart'),
              SizedBox(height: 10),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 247, 17, 1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Operator Penugasan', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text(
                'Operator Penugasan digunakan untuk memberi nilai ke variable.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text('Jenis-jenis Operator Penugasan:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              HighlightView(
                '''
// += : Menambahkan nilai dan langsung menyimpannya ke variable
// -= : Mengurangi nilai dan langsung menyimpannya ke variable
// *= : Mengalikan nilai dan langsung menyimpannya ke variable
// /= : Membagi nilai dan langsung menyimpannya ke variable (jika tipe data double)
// ~/= : Membagi nilai dan dibulatkan ke bawah (integer)
// %= : Mengambil sisa bagi dan menyimpannya ke variable
''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),

              SizedBox(height: 20),
              Text('Contoh Penggunaan Operator Penugasan:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),

              HighlightView(
                '''
var a = 30;
a += 40;
print("Hasil += : \$a");
''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              Divider(),

              HighlightView(
                '''
var a = 70;
a -= 20;
print("Hasil -= : \$a");
''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              Divider(),

              HighlightView(
                '''
var a = 50;
a *= 2;
print("Hasil *= : \$a");
''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              Divider(),

              HighlightView(
                '''
var a = 100;
a ~/= 6;
print("Hasil ~/= : \$a"); // Pembagian bulat ke bawah
''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              Divider(),

              HighlightView(
                '''
var a = 10;
a %= 3;
print("Hasil %= : \$a"); // Sisa bagi
''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              Divider(),

              HighlightView(
                '''
double b = 20;
b /= 4;
print("Hasil /= : \$b"); // Hasil double
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
