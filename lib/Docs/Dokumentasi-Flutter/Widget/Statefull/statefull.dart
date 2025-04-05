import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class Statefull extends StatelessWidget {
  const Statefull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Statefull Widget',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Statefull Widget',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text('Apa itu statefull widget?'),
              SizedBox(height: 10),
            ],
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SizedBox(height: 20,),
          Text(
            '📌 Statefull Widget adalah widget yang menyimpan state (data). UI-nya bisa berubah-ubah selama aplikasi berjalan.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          Text('Sebgai Contoh Statefull widget:\nkita menggunakan:\nWdiget TextField dan Widget ListView', style: TextStyle(fontSize: 16),),
          SizedBox(height: 16),
          Text(
            'Contoh Kode:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 8,),
          HighlightView(
            '''
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final TextEditingController _controller = TextEditingController();
  List<String> items = [];

  void _addItem() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        items.add(_controller.text);
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            labelText: 'Masukkan teks',
            suffixIcon: IconButton(
              icon: Icon(Icons.add),
              onPressed: _addItem,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(items[index]),
              );
            },
          ),
        ),
      ],
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
            '🖼️ Ilustrasi Widget TextField:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 12),
          // image network
          Image.network('https://files.codingninjas.in/article_images/flutter-textfield-1-1653282358.webp'),
          SizedBox(height: 5,),
          // sumber gambar
          Text('Sumber Gambar:\nhttps://www.naukri.com/code360/library/flutter-textfield'),
          SizedBox(height: 24),
          Text(
            '🖼️ Ilustrasi Widget ListView:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 12),
          // image network
          Image.network('https://flutterawesome.com/content/images/2020/03/screenshot-for-readme.png'),
          SizedBox(height: 5,),
          // sumber gambar
          Text('Sumber Gambar:\nhttps://flutterawesome.com/a-flutter-listview-in-which-items-can-be-grouped-into-sections/')
        ],
      ),
    );
  }
}