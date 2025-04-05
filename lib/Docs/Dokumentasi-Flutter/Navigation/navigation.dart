import 'package:flutter/material.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Flutter/Navigation/NavigatorPop/navigator_pop_flutter.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Flutter/Navigation/NavigatorPush/navigator_push_flutter.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Navigation',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10,),
          InkWell(
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavigatorPushFlutter()),
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
                leading: Icon(Icons.arrow_forward, size: 40, color: Colors.blueGrey),
                title: Text(
                  'Navigator.push()',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Untuk Berpindah Halaman'),
              ),
            ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavigatorPopFlutter()),
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
                leading: Icon(Icons.arrow_back, size: 40, color: Colors.blueGrey),
                title: Text(
                  'Navigator.pop()',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Untuk Balik ke Halaman'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}