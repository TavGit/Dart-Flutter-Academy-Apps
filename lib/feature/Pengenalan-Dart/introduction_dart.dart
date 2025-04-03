import 'package:flutter/material.dart';

class IntroDartPages extends StatefulWidget {
  const IntroDartPages({super.key});

  @override
  State<IntroDartPages> createState() => _IntroDartPagesState();
}

class _IntroDartPagesState extends State<IntroDartPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengenalan Dart'),
      ),
      body: Text('Hai ini Pengenalan dart'),
    );
  }
}