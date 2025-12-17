import 'package:flutter/material.dart';
import 'package:my_first_flutter_application/presentation/quiz/models/answer_button.dart';
import 'package:my_first_flutter_application/presentation/quiz/models/question_storage.dart';



class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.chooseAnswer, {super.key});
  final void Function(String) chooseAnswer;
  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.chooseAnswer(selectedAnswer);
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      }else if (currentQuestionIndex == questions.length - 1) {
        currentQuestionIndex = 0;
      }
      // Pass a dummy value for now
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.purpleAccent, Colors.deepPurple, Colors.indigo],
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text(
              questions[currentQuestionIndex].questionText,
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            ...questions[currentQuestionIndex].answerOptions.keys.map((answerText) {
              return AnswerButton(
                answerText: answerText,
                onTap: () {
                  answerQuestion(
                    answerText
                  );
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
