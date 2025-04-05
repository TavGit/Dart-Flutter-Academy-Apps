import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class LibraryProvider extends StatelessWidget {
  const LibraryProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Library Provider',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Library Provider',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text('Apa aja library Provider?, perbedaan ny apa?'),
              SizedBox(height: 10),
            ],
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            '📌 Beberapa library populer untuk state management di Flutter:',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 12),

          /// PROVIDER
          Text(
            '1. Provider',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            'Provider adalah library state management yang direkomendasikan oleh tim Flutter, sederhana, dan efisien untuk mengelola state.',
          ),
          SizedBox(height: 12),
          HighlightView(
            '''
      import 'package:flutter/material.dart';
      import 'package:provider/provider.dart';

      void main() {
        runApp(
          ChangeNotifierProvider(
            create: (_) => Counter(),
            child: MyApp(),
          ),
        );
      }

      class Counter with ChangeNotifier {
        int value = 0;

        void increment() {
          value++;
          notifyListeners();
        }
      }

      class MyApp extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
          return MaterialApp(
            home: Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Counter: \${context.watch<Counter>().value}'),
                    ElevatedButton(
                      onPressed: () => context.read<Counter>().increment(),
                      child: Text('Tambah'),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      }
            ''',
            language: 'dart',
            theme: atomOneDarkTheme,
            padding: EdgeInsets.all(12),
            textStyle: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 24),

          /// BLOC
          Text(
            '2. Bloc',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            'Bloc (Business Logic Component) menggunakan konsep Stream dan Sink untuk memisahkan UI dan logic secara bersih.',
          ),
          SizedBox(height: 12),
          HighlightView(
            '''
      import 'package:flutter_bloc/flutter_bloc.dart';

      // Event
      abstract class CounterEvent {}
      class Increment extends CounterEvent {}

      // Bloc
      class CounterBloc extends Bloc<CounterEvent, int> {
        CounterBloc() : super(0) {
          on<Increment>((event, emit) => emit(state + 1));
        }
      }
            ''',
            language: 'dart',
            theme: atomOneDarkTheme,
            padding: EdgeInsets.all(12),
            textStyle: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 24),

          /// GETX
          Text(
            '3. GetX',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            'GetX adalah library state management yang ringan dan mudah digunakan. Terintegrasi dengan routing dan dependency injection.',
          ),
          SizedBox(height: 12),
          HighlightView(
            '''
      import 'package:get/get.dart';

      class CounterController extends GetxController {
        var count = 0.obs;

        void increment() {
          count++;
        }
      }

      // Pemakaian di UI
      Obx(() => Text('\${controller.count}'))
            ''',
            language: 'dart',
            theme: atomOneDarkTheme,
            padding: EdgeInsets.all(12),
            textStyle: TextStyle(fontSize: 14),
          ),
          
          SizedBox(height: 24),

          /// PERBANDINGAN
          Text(
            '📊 Perbedaan Singkat:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 8),
          Text('• Provider: Simpel, cocok untuk project kecil-menengah.'),
          Text('• Bloc: Lebih terstruktur, cocok untuk aplikasi skala besar.'),
          Text('• GetX: Cepat & ringan, sangat minim boilerplate.'),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
