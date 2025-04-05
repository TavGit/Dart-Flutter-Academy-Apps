import 'package:flutter/material.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Flutter/FormInput/TextEditingController/text_editing_controller.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Flutter/FormInput/TextField-ObScure/textfield_obscure.dart';

class FormInput extends StatelessWidget {
  const FormInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Form & Input',
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
                  MaterialPageRoute(builder: (context) => TextfieldObscure()),
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
                leading: Icon(Icons.lock, size: 40, color: const Color.fromARGB(255, 192, 95, 16)),
                title: Text(
                  'TextField & ObScure text',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Menggunakan TextField untuk input teks biasa dan password'),
              ),
            ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TextEditingControllerFlutter()),
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
                leading: Icon(Icons.check_circle, size: 40, color: const Color.fromARGB(255, 7, 201, 14)),
                title: Text(
                  'Text Editing Controller',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Mengatur dan mengambil nilai input dengan TextEditingController'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}