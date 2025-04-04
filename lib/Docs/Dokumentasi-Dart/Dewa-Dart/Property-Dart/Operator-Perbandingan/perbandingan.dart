import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class Perbandingan extends StatelessWidget {
  const Perbandingan({super.key});

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
            children: [
              Text(
                'Operator Perbandingan',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
              ),
              Text('Operator Perbandingan Dart'),
              SizedBox(height: 10),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 247, 17, 1),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Operator Perbandingan', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(
              'Operator Perbandingan adalah operator yang hasilnya Boolean -> true atau false.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Operator Perbandingan bisa digunakan di tipe data Number (integer dan double) dan String.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text('Jenis-jenis Operator Perbandingan:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            HighlightView(
              '''
// == : Sama Dengan
// != : Tidak Sama Dengan
// >  : Lebih dari
// <  : Kurang dari
// >= : Lebih dari atau sama dengan
// <= : Kurang dari atau sama dengan
''',
              language: 'dart',
              theme: atomOneDarkTheme,
              padding: EdgeInsets.all(12),
              textStyle: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            Text('Contoh Penggunaan di Integer:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            HighlightView(
              '''
var SamaDenganInteger = 20 == 20;
print("Sama Dengan: Apakah ini True atau false? \$SamaDenganInteger");
''',
              language: 'dart',
              theme: atomOneDarkTheme,
              padding: EdgeInsets.all(12),
              textStyle: TextStyle(fontSize: 16),
            ),
            Divider(),

            HighlightView(
              '''
var TidakSamaDenganInteger = 10 != 30;
print("Tidak Sama Dengan: Apakah ini True atau false? \$TidakSamaDenganInteger");
''',
              language: 'dart',
              theme: atomOneDarkTheme,
              padding: EdgeInsets.all(12),
              textStyle: TextStyle(fontSize: 16),
            ),
            Divider(),

            HighlightView(
              '''
var lebihdariinteger = 10 > 5;
print("Lebih dari: Apakah ini True atau false? \$lebihdariinteger");
''',
              language: 'dart',
              theme: atomOneDarkTheme,
              padding: EdgeInsets.all(12),
              textStyle: TextStyle(fontSize: 16),
            ),
            Divider(),

            HighlightView(
              '''
var kurangdariinteger = 20 < 50;
print("Kurang dari: Apakah ini True atau false? \$kurangdariinteger");
''',
              language: 'dart',
              theme: atomOneDarkTheme,
              padding: EdgeInsets.all(12),
              textStyle: TextStyle(fontSize: 16),
            ),
            Divider(),

            HighlightView(
              '''
var lebihatausama = 40 >= 60;
print("Lebih dari atau sama dengan: Apakah ini True atau false? \$lebihatausama");
''',
              language: 'dart',
              theme: atomOneDarkTheme,
              padding: EdgeInsets.all(12),
              textStyle: TextStyle(fontSize: 16),
            ),
            Divider(),

            HighlightView(
              '''
var kurangatausama = 20 <= 40;
print("Kurang dari atau sama dengan: Apakah ini True atau false? \$kurangatausama");
''',
              language: 'dart',
              theme: atomOneDarkTheme,
              padding: EdgeInsets.all(12),
              textStyle: TextStyle(fontSize: 16),
            ),

            SizedBox(height: 20),
            Text('Contoh Penggunaan di String:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            HighlightView(
              '''
var samadengan = 'gustav' == 'ibrahim';
print("Sama dengan di string: Apakah ini True atau false? \$samadengan");
''',
              language: 'dart',
              theme: atomOneDarkTheme,
              padding: EdgeInsets.all(12),
              textStyle: TextStyle(fontSize: 16),
            ),
            Divider(),

            HighlightView(
              '''
var tidaksamadengan = 'muhammad' != 'gustav';
print("Tidak sama dengan di String: Apakah ini True atau false? \$tidaksamadengan");
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
