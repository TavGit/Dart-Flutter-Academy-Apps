import 'package:flutter/material.dart';
import 'package:myacademy_apps/Quiz/Data/quiz_dart_list.dart';
import 'package:myacademy_apps/Quiz/Screen/hasil_quiz_dart.dart';

class QuizDartPages extends StatefulWidget {
  const QuizDartPages({super.key});

  @override
  State<QuizDartPages> createState() => _QuizDartPagesState();
}

class _QuizDartPagesState extends State<QuizDartPages> {
  // buat main dan second warna
  Color mainColor = Color(0xFF252c4a);
  Color secondColor = Color(0xFF117eeb);

  // controller pages
  PageController? controller = PageController();

  // buat fungsi button saat ditekan
  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isFalse = Colors.red;
  Color buttonColor = Color(0xFF117eeb);

  // buat score
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: controller!,
          onPageChanged: (page) {
            setState(() {
              isPressed = false;
            });
          },
          itemCount: question.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Quiz Dart ${index + 1}/${question.length}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Divider(color: Colors.white, height: 8.0, thickness: 1.0),
                SizedBox(height: 20.0),
                Text(
                  question[index].question!,
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                SizedBox(height: 35.0),
                for (int i = 0; i < question[index].answer!.length; i++)
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 18.0),
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      color:
                          isPressed
                              ? question[index].answer!.entries
                                      .toList()[i]
                                      .value
                                  ? isTrue
                                  : isFalse
                              : secondColor,
                      padding: EdgeInsets.symmetric(vertical: 18.0),
                      onPressed:
                          isPressed
                              ? () {}
                              : () {
                                setState(() {
                                  isPressed = true;
                                  if (question[index].answer!.entries
                                      .toList()[i]
                                      .value) {
                                    score += 10;
                                    print(score);
                                  }
                                });
                              },
                      child: Text(
                        question[index].answer!.keys.toList()[i],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      onPressed: isPressed ? index + 1 == question.length ? () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => HasilQuizDart(score),
                          ),
                        );
                      }
                      : () {
                        controller!.nextPage(
                          duration: Duration(milliseconds: 500), 
                          curve: Curves.linear
                        );
                        setState(() {
                          isPressed = false;
                        });
                      }
                      : null,
                      style: OutlinedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.deepPurple
                      ),
                      child: Text(
                        index + 1 == question.length ? "Lihat Skor" : "Selanjutnya",
                        style: TextStyle(
                          color: Colors.white, fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
