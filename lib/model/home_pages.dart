import 'package:flutter/material.dart';
import 'package:myacademy_apps/Theme/theme_provider.dart';
import 'package:myacademy_apps/model/profil_pages.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool iconBool = false;
  IconData iconLight = Icons.wb_sunny;
  IconData iconDark = Icons.bedtime_outlined;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dart & Flutter Academy",
          style: TextStyle(
            fontFamily: 'Jersey15-Regular',
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
              setState(() {
                iconBool = !iconBool;
              });
            },
            icon: Icon(
              iconBool ? iconDark : iconLight,
              color: iconBool ? Colors.yellow : Colors.orange, size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilPages()),
              );
            },
            icon: Icon(Icons.account_circle, size: 40),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Hai! Welcome', style: TextStyle(fontSize: 20))],
        ),
      ),
    );
  }
}
