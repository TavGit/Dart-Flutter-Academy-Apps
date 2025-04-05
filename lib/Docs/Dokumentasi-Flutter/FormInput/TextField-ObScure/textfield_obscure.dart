import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class TextfieldObscure extends StatelessWidget {
  const TextfieldObscure({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TextField & ObScure Text',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'TextField & ObScure Text',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text('Seperti apa TextField & ObScure Text?'),
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
            '📌 TextField adalah widget input bawaan Flutter untuk memasukkan teks.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(
            '🛡️ obscureText: adalah properti di TextField yang digunakan untuk menyembunyikan teks, biasanya untuk input password.',
          ),
          SizedBox(height: 20),

          Text(
            'Contoh TextField biasa:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(height: 10),
          HighlightView(
            '''
      TextField(
        decoration: InputDecoration(
          labelText: 'Username',
          border: OutlineInputBorder(),
        ),
      )
            ''',
            language: 'dart',
            theme: atomOneDarkTheme,
            padding: EdgeInsets.all(12),
            textStyle: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 20),

          Text(
            'Contoh TextField dengan obscureText (Password):',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(height: 10),
          HighlightView(
            '''
      TextField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          border: OutlineInputBorder(),
        ),
      )
            ''',
            language: 'dart',
            theme: atomOneDarkTheme,
            padding: EdgeInsets.all(12),
            textStyle: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 20),

          Text(
            '🔐 Dengan menggunakan obscureText: true, input yang dimasukkan akan terlihat seperti titik-titik agar lebih aman saat mengetik password.',
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}