import 'package:myacademy_apps/Quiz/Model/quiz_model.dart';

List<QuizModel> question = [
  // 5 Question dari pengenalan dart
  // Sejarah Dart
  QuizModel(
    "Pada tahun berapa bahasa pemrogramman dart diciptakan?", 
    {
      "2013": false,
      "1998": false,
      "2011": true,
      "2020": false
    },
  ),
  QuizModel(
    "Siapa pencipta bahasa pemrogramman dart?", 
    {
      "Guido Van Rosum": false,
      "Rasmus Lerdorf": false,
      "Mark Zuckerberg": false,
      "Lars Bak": true
    },
  ),
  // Pengertian Dart
  QuizModel(
    "Bahasa Pemrogramman Dart, digunakan untuk apa?", 
    {
      "Untuk pengembangan aplikasi mobile": true,
      "Untuk pengembangan front end web": false,
      "Untuk menganalisis data": false,
      "Untuk cyber security": false
    },
  ),
  QuizModel(
    "Apakah bahasa pemrogramman dart memiliki paradigma (OOP)?", 
    {
      "Ya": true,
      "Tidak": false,
      "Mungkin, (belum pasti)": false,
      "Tidak Tahu": false
    },
  ),
  // Kelebihan Dart
  QuizModel(
    "Bahasa pemrogramman dart digunakan untuk platform apa?", 
    {
      "Hanya Android saja": false,
      "Hanya IOS saja": false,
      "Multiplatform": true,
      "Hanya Desktop saja": false
    },
  ),
  // 10 Question dari dokumentasi dart
  // 2 Question dari Kategory Pemula 
  QuizModel(
    "Perintah apa untuk membuat project pertama dart?", 
    {
      "dengan perintah \'flutter create nama_project\'": false,
      "dengan perintah \'dart create nama_project\'": true,
      "dengan perintah \'sudo apt install dart\'": false,
      "dengan perintah\n\'sudo apt dart create nama_project\'": false
    },
  ),
  QuizModel(
    "Apa kepanjangan dari Dart SDK?", 
    {
      "Dart(Software Development Kit)": true,
      "Dart(Java Development Kit)": false,
      "Dart(Sistem Dart Kompiler)": false,
      "Dart(Software Development Kotlin)": false
    },
  ),
  // 4 Question dari Kategory Sepuh
  QuizModel(
    "Kode main function apa yg akan dieksekusi oleh dart?", 
    {
      "void main() {}": true,
      "print('')": false,
      "system.log('')": false,
      "console.log('')": false
    },
  ),
  QuizModel(
    "Tipe data apa yang menyimpan sebuah teks?", 
    {
      "String": true,
      "Integer": false,
      "Double": false,
      "Dynamic": false
    },
  ),
  QuizModel(
    "Kata kunci apa yang dimana kita tidak perlu menyebutkan nama tipe data nya lagi?", 
    {
      "final": false,
      "var": true,
      "late": false,
      "const": false
    },
  ),
  QuizModel(
    "Ada berapa cara untuk menggunakan String Interpolan?", 
    {
      "3": false,
      "4": false,
      "5": false,
      "2": true
    },
  ),
  // 4 Question dari Kategory Dewa
  QuizModel(
    "Ada berapa jenis operator aritmatika?", 
    {
      "10": false,
      "7": true,
      "5": false,
      "2": false
    },
  ),
  QuizModel(
    "Operator perbandingan bisa digunakan di tipe data apa saja?", 
    {
      "Integer, double, dan string": true,
      "Boolean, double dan string": false,
      "Dynamic, integer dan double": false,
      "Integer, boolean dan dynamic": false
    },
  ),
  QuizModel(
    "Apa yang dimaksud dengan Increment dan Decrement?", 
    {
      "Increment adalah penambahan,\ndan Decrement adalah pengurangan": true,
      "Increment dan Decrement adalah tipe data": false,
      "Increment adalah variable,\ndan Decrement adalah tipe data": false,
      "Decrement adalah string interpolan,\ndan increment adalah penambahan": false
    },
  ),
  QuizModel(
    "Didalam increment dan decrement terdapat dua jenis yaitu?", 
    {
      "PostFix dan PreFix": true,
      "PreFIx dan PostMan": false,
      "PostFix dan PreFIx IP": false,
      "PreFix kelas C dan PreFix kelas A": false
    },
  ),
];