import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class SetstateFlutter extends StatelessWidget {
  const SetstateFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SetState Flutter',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'SetState Flutter',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text('Apa sih SetState itu?'),
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
            '📌 `setState()` adalah method yang digunakan untuk memberi tahu Flutter bahwa ada perubahan data pada State yang perlu direbuild UI-nya.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          Text(
            'Contoh Kode Penggunaan `setState()`:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 8),
          HighlightView(
            '''
import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Counter: \$counter',
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Tambah'),
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
            '📝 Penjelasan:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 8),
          Text(
            '- `setState()` digunakan di dalam `StatefulWidget`.\n'
            '- Fungsi ini akan menjalankan ulang `build()` dan me-refresh tampilan sesuai data terbaru.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
