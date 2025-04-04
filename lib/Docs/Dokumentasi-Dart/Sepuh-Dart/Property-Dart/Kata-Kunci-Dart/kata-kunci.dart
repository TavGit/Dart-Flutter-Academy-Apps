import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class KataKunciDart extends StatelessWidget {
  const KataKunciDart({super.key});

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
                'Kata Kunci di Dart',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text('Mengenal 4 Kata Kunci Dart'),
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
                'Dart Memiliki 4 Kata Kunci',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '1. Kata Kunci Var',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('''
Sama seperti variable cuman bedanya klo var ini lebih simpel syntax nya, dan kita tidak perlu menyebutkan nama tipe data nya lagi,
jadi nanti si dart akan membaca secara otomatis value/tipe data dri variable tersebut.
              ''', style: TextStyle(fontSize: 16)),
              Text(
                'Contoh: Menggunakan kata kunci var',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              HighlightView(
                '''
void main() {

  var huruf = 'halo developer';
  print(huruf);
  
}

                ''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '2. Kata Kunci Final',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('''
Berbeda dengan var, final ini adalah sebuah kata kunci dimana,
jika kita menggunakan kata kunci final maka isi dari variable yaitu value nya bisa kita ubah/atau pun bisa kita tambahkan,
tetapi jka kita mengubah variable ny maka akan terjadi error
              ''', style: TextStyle(fontSize: 16)),
              Text(
                'Contoh: Menggunakan kata kunci final',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              HighlightView(
                '''
void main() {

  final firstname = 'Gustav';
  // bisa kita tambahkan isi dari value nya
  firstname.add('muhammad');

  // tidak bisa diubah variable nya
  firstname = ["lastname"];

  print(firstname);
  
}

                ''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '3. Kata Kunci Const',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('''
Berbeda dengan final, const ini adalah kata kunci yang dimana variable dan isi value/data dari sebuah variable tersebut tidak bisa
di ubah dan tidak bisa ditambahkan, jadi keduanya baik itu variable mau pun isi/value nya tidak bisa diubah, dan tidak bisa ditambahkan
jadi ibarat nya sudah terkunci.
              ''', style: TextStyle(fontSize: 16)),
              Text(
                'Contoh: Menggunakan kata kunci const',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              HighlightView(
                '''
void main() {

 const kota_makan = ["telor","nugget","sayur","nasi"];

// tidak bisa menambahkan isi data/value nya
 kotak_makan.add("kentang");

// sama seperti final variable tidak bisa diubah
 kotak_makan = ["kotak_buah"];

 print(kotak_makan);
  
}

                ''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '4. Kata Kunci Late',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('''
Berbeda dengan 3 kata kunci sebelum nya,
kata kunci late bisa mengisi value/data tapi di waktu tertentu,
              ''', style: TextStyle(fontSize: 16)),
              Text(
                'Contoh: Menggunakan kata kunci late',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              HighlightView(
                '''
// jika kita tidak ingin ngisi value dari variable token, ya maka kita tidak perlu mengisi ny dulu biarkan saja begitu,tapi tetap kita harus isi sebelum diprint //

  late String token;

void main() {

  token = 'listrik';

 print(token);
  
}

                ''',
                language: 'dart',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text('''
jadi, pengertian dari kata kunci late adalah, mendekalarasikan sebuah variable yang isi value/data nya,
belum disi diwaktu sekarang, tapi pasti diisi sebelum digunakan.
Tujuan nya: Menunda mengisi value dari variable, tapi memastikan variable tersebut tiadk null
              ''', style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
