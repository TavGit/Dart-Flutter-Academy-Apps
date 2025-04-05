import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class TextEditingControllerFlutter extends StatelessWidget {
  const TextEditingControllerFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Text Editing Controller',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Text Editing Controller',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text('Seperti apa Text Editing Controller?'),
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
            '🧠 TextEditingController digunakan untuk mengontrol dan mengambil data dari TextField.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            '📦 Biasanya digunakan untuk mengambil input dari user dan bisa juga digunakan untuk mengatur nilai awal dari TextField.',
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 20),

          Text(
            'Contoh penggunaan TextEditingController:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(height: 10),

          HighlightView(
            '''
      class MyWidget extends StatefulWidget {
        @override
        _MyWidgetState createState() => _MyWidgetState();
      }

      class _MyWidgetState extends State<MyWidget> {
        final TextEditingController _controller = TextEditingController();

        @override
        void dispose() {
          _controller.dispose(); // Penting untuk menghindari memory leak
          super.dispose();
        }

        @override
        Widget build(BuildContext context) {
          return Column(
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: 'Masukkan Nama',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Nama: \${_controller.text}');
                },
                child: Text('Tampilkan Nama'),
              ),
            ],
          );
        }
      }
            ''',
            language: 'dart',
            theme: atomOneDarkTheme,
            padding: EdgeInsets.all(12),
            textStyle: TextStyle(fontSize: 14),
          ),

          SizedBox(height: 20),
          Text(
            '📝 TextEditingController sangat berguna untuk validasi form, mengambil input user, dan melakukan aksi berdasarkan input tersebut.',
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}