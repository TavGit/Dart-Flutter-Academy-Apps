import 'package:flutter/material.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Flutter/Performance/BuildOptimization/build_optimization.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Flutter/Performance/ConstPerformance/const_performance.dart';

class Performance extends StatelessWidget {
  const Performance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Performance & Build',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ConstPerformance()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue, width: 2),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: Icon(
                  Icons.build_circle,
                  size: 40,
                  color: Colors.red,
                ),
                title: Text(
                  'Performance',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Menggunakan Const untuk performa Widget'),
              ),
            ),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BuildOptimization()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue, width: 2),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: Icon(
                  Icons.android,
                  size: 40,
                  color: Colors.green,
                ),
                title: Text(
                  'Build Optimization',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Mengenal Build APK & Build Release'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
