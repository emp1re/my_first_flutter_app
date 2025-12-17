import 'package:flutter/material.dart';
import 'package:my_first_flutter_application/presentation/quiz/models/question_storage.dart';
import 'models/quize_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.selectedAnswers, {super.key});
  final List<String> selectedAnswers;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question_text': questions[i].questionText,
        'selected_answer': selectedAnswers[i],
        'correct_answer': questions[i].answerOptions.keys.firstWhere(
          (key) => questions[i].answerOptions[key] == true,
        ),
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) => 
      data['selected_answer'] == data['correct_answer']
    ).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.purpleAccent, Colors.deepPurple, Colors.indigo],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: const TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            SingleChildScrollView(child: QuizSummary(summaryData)),

            const SizedBox(height: 30),
            OutlinedButton(
              onPressed: () {
                selectedAnswers.clear();
                Navigator.pop(context);
              },
              child: Text(
                'Back to Home',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
