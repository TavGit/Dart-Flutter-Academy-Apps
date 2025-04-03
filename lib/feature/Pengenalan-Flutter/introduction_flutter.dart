import 'package:flutter/material.dart';

class IntroFlutterPages extends StatefulWidget {
  const IntroFlutterPages({super.key});

  @override
  State<IntroFlutterPages> createState() => _IntroFlutterPagesState();
}

class _IntroFlutterPagesState extends State<IntroFlutterPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengenalan Flutter'),
      ),
      body: Text('Hai ini Pengenalan Flutter'),
    );
  }
}