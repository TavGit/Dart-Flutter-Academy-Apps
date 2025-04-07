import 'package:flutter/material.dart';
import 'package:myacademy_apps/Quiz/Screen/quiz_dart_pages.dart';
import 'package:myacademy_apps/Quiz/quiz_pages.dart';

class HasilQuizDart extends StatefulWidget {
  final int score;
  const HasilQuizDart(this.score, {super.key});

  @override
  State<HasilQuizDart> createState() => _HasilQuizDartState();
}

class _HasilQuizDartState extends State<HasilQuizDart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle_outline,
                color: Colors.indigo,
                size: 100,
              ),
              const SizedBox(height: 20),
              Text(
                'Quiz Dart Selesai!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Skor kamu:',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[800],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '${widget.score}',
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuizDartPages()),
                  );
                },
                icon: const Icon(Icons.refresh, color: Colors.white),
                label: const Text('Ulangi Quiz', style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 14,
                  ),
                  textStyle: const TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => QuizPages()),
                    (Route<dynamic> route) => false, // hapus semua halaman sebelumnya
                  );
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                label: const Text('Kembali', style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 14,
                  ),
                  textStyle: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
