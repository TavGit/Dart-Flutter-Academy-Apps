import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class Stateless extends StatelessWidget {
  const Stateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stateless Widget',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Stateless Widget',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text('Apa itu stateless widget?'),
              SizedBox(height: 10),
            ],
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SizedBox(height: 20,),
          Text(
            '📌 Stateless Widget adalah widget yang tidak menyimpan state (data). UI-nya tidak akan berubah selama aplikasi berjalan.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          Text('Sebgai Contoh Stateless widget:\nkita menggunakan:\nWdiget Text dan Widget Container', style: TextStyle(fontSize: 16),),
          SizedBox(height: 16),
          Text(
            'Contoh Kode:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 8),
          HighlightView(
            '''
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text( // ini adalah text
          'Halo Flutter!',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        Container( // ini adalah container
          color: Colors.blue,
          child: Text(
            'Ini adalah Container',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
            ''',
            language: 'dart',
            theme: atomOneDarkTheme,
            padding: EdgeInsets.all(12),
            textStyle: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 24),
          Text(
            '🖼️ Ilustrasi Widget Text:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 12),
          Image.network('https://owenhalliday.co.uk/static/c8f94f8e1790da080e2b73da2edeb8fc/2e02d/textstyling1.png'),
          SizedBox(height: 5,),
          Text('Sumber Gambar:\nhttps://owenhalliday.co.uk/text-styling-flutter/'),
          SizedBox(height: 24),
          Text(
            '🖼️ Ilustrasi Widget Container:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Image.network('https://s3.amazonaws.com/ebooks.syncfusion.com/LiveReadOnlineFiles/flutter-ui-succinctly/Images/a-container-widget-with-a-boxdecoration-using-borderradius-another-example.png'),
          SizedBox(height: 5,),
          Text('Sumber Gambar:\nhttps://www.syncfusion.com/succinctly-free-ebooks/flutter-ui-succinctly/containers'),
        ],
      ),
    );
  }
}
