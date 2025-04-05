import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class NavigatorPushFlutter extends StatelessWidget {
  const NavigatorPushFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(
          'Navigator Push',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Navigator Push',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text('Apa itu Navigator Push?'),
              SizedBox(height: 10),
            ],
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            '📌 Navigator.push digunakan untuk berpindah halaman atau navigasi ke screen lain dalam aplikasi Flutter.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          Text(
            'Contoh Kode Navigator.push:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 8),
          HighlightView(
            '''
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HalamanUtama(),
  ));
}

class HalamanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Utama')),
      body: Center(
        child: ElevatedButton(
          child: Text('Ke Halaman Kedua'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HalamanKedua()),
            );
          },
        ),
      ),
    );
  }
}

class HalamanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Kedua')),
      body: Center(
        child: Text('Ini adalah halaman kedua'),
      ),
    );
  }
}
            ''',
            language: 'dart',
            theme: atomOneDarkTheme,
            padding: EdgeInsets.all(12),
            textStyle: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 24),
          Text(
            '🧭 Penjelasan:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 12),
          Text(
            '- `Navigator.push` mendorong halaman baru ke dalam stack.\n'
            '- `MaterialPageRoute` digunakan untuk berpindah ke halaman lain.\n'
            '- Setiap halaman adalah widget `StatelessWidget` atau `StatefulWidget`.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 24),
          Text(
            '🖼️ Ilustrasi Navigator.push:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 12),
          Image.network(
            'https://lh5.googleusercontent.com/oCuCdIby5r0cWdiWFLE8qEIhj77Pamyd9T62IciPFDJ874m-TbnySp36-OkJeoKiR0rs2R925grsIz7F_B0BcB-u_Y4rhQY2bAWhordqbU2JWaA4ns4nucEjH1W9KyGtfhwwjx_rEfsAzM-mEtomv4TwLtf2Ei3OYVGcmUsX0dsjPapRm4bw3KWEiV1i',
            height: 200,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 5),
          Text(
            'Sumber Gambar:\nhttps://www.barajacoding.or.id/navigation-route-navigation-flutter/',
            style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
