import 'package:flutter/material.dart';

class QuizPages extends StatelessWidget {
  const QuizPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz Dart dan Flutter',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => SejarahDart()),
              // );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color.fromARGB(255, 10, 34, 167), width: 2),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: Image.asset("assets/Images/dart.png"),
                title: Text(
                  'Quiz Dart',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('"Yuk coba Quiz Dart-nya!"'),
              ),
            ),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue),
              ),
              child:  ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: Image.asset("assets/Images/flutter.png"),
                title: Text(
                  'Quiz Flutter',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('"Yuk coba Quiz Flutter-nya!"'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


