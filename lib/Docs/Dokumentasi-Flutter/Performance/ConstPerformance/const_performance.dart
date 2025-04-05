import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class ConstPerformance extends StatelessWidget {
  const ConstPerformance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Performance',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Performance',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text('Apa itu Performance?, Kenapa harus pake const?'),
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
            '🚀 Kenapa `const` penting untuk performa?',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Text(
            '- Keyword `const` digunakan untuk **menandai bahwa widget tidak akan berubah (immutable)**.\n'
            '- Flutter bisa **mengoptimalkan build** karena tahu bahwa `const widget` gak perlu di-render ulang.\n'
            '- Ini bikin aplikasi jadi lebih **efisien dan cepat**, terutama di UI yang banyak elemen statis.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          Text(
            'Contoh Penggunaan const:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          HighlightView(
            '''
class ContohConst extends StatelessWidget {
  const ContohConst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Ini tanpa const'), // Tidak pakai const
            const Text('Ini pakai const'), // Pakai const (lebih optimal)
          ],
        ),
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
            '📌 Ringkasan:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            '✅ Gunakan `const` untuk widget yang tidak berubah\n'
            '✅ Membantu Flutter menghindari rebuild yang tidak perlu\n'
            '✅ Meningkatkan performa aplikasi\n'
            '❌ Jangan pakai `const` kalau isi widget-nya dinamis (berubah)',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
