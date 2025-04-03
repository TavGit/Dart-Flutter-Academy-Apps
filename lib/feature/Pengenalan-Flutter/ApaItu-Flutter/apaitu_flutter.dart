import 'package:flutter/material.dart';

class ApaituFlutter extends StatelessWidget {
  const ApaituFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apa Itu Flutter?', style: TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 76, 126, 212),
      ),
      body: SingleChildScrollView(

      ),
    );
  }
}
