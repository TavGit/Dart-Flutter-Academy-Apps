import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class ProviderFlutter extends StatelessWidget {
  const ProviderFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Provider Flutter',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Provider Flutter',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text('Apa itu Provider?'),
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
            '📌 Provider adalah package state management di Flutter yang digunakan untuk mengelola dan berbagi data (state) antar widget dengan efisien.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          Text(
            'Jenis-jenis Provider yang Umum Digunakan:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 8),
          Text(
            '✅ Provider: Provider paling basic untuk menyediakan data.\n'
            '✅ ChangeNotifierProvider: Digunakan dengan class yang extends ChangeNotifier.\n'
            '✅ FutureProvider: Digunakan untuk menampilkan data yang berasal dari Future.\n'
            '✅ StreamProvider: Untuk mendengarkan data dari Stream secara real-time.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 24),
          Text(
            'Contoh Penggunaan ChangeNotifierProvider:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 8),
          HighlightView(
            '''
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// State Management Class
class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Provider Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Counter: \${Provider.of<Counter>(context).count}',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Provider.of<Counter>(context, listen: false).increment();
                },
                child: Text('Tambah'),
              ),
            ],
          ),
        ),
      ),
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
            '📝 Penjelasan Singkat:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 8),
          Text(
            '- `ChangeNotifier` digunakan untuk membuat state yang bisa di-*listen*.\n'
            '- `notifyListeners()` berfungsi untuk memberi tahu widget agar melakukan update UI.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
