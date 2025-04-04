import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';


class Konversi extends StatelessWidget {
  const Konversi({super.key});

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
                'Konversi Tipe Data',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text('Ada kala nya kita perlu konversi tipe data'),
              SizedBox(height: 10),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 247, 17, 1),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pengertian Konversi Tipe Data',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Konversi tipe data adalah proses mengubah nilai dari satu tipe data ke tipe data lainnya. Misalnya, dari String ke int, dari double ke int, atau sebaliknya. Hal ini penting ketika kita perlu memastikan data sesuai dengan kebutuhan proses tertentu.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Contoh Konversi Tipe Data di Dart:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Divider(),
              Text('String ke int:', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              HighlightView(
                'String umurString = "20";\nint umur = int.parse(umurString);',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Divider(),
              Text('String ke double:', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              HighlightView(
                'String tinggiString = "1.75";\ndouble tinggi = double.parse(tinggiString);',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Divider(),
              Text('int ke String:', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              HighlightView(
                'int tahun = 2025;\nString tahunString = tahun.toString();',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Divider(),
              Text('double ke int:', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              HighlightView(
                'double berat = 65.8;\nint beratInt = berat.toInt();',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Divider(),
              Text('boolean ke String:', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              HighlightView(
                'bool isOnline = true;\nString status = isOnline.toString();',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Divider(),
              Text('Contoh Output:', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              HighlightView(
                'print("Umur: \$umur tahun");\nprint("Tinggi: \$tinggi meter");\nprint("Tahun: \$tahunString");\nprint("Berat (dibulatkan): \$beratInt kg");\nprint("Status Online: \$status");',
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
