
import 'package:flutter/material.dart';

class QuizSummary extends StatelessWidget {
  const QuizSummary(this.summaryMap, {super.key});
  final List<Map<String, Object>> summaryMap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Column(
          children: summaryMap.map((data) {
            final questionIndex = data['question_index'] as int;
            final questionText = data['question_text'] as String;
            final selectedAnswer = data['selected_answer'] as String;
            final correctAnswer = data['correct_answer'] as String;
            final isCorrect = selectedAnswer == correctAnswer;
        
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: isCorrect ? Colors.green : Colors.red,
                    child: Text(
                      '${questionIndex + 1}',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          questionText,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Your answer: $selectedAnswer',
                          style: TextStyle(
                            fontSize: 14,
                            color: isCorrect ? Colors.green[200] : Colors.red[200],
                          ),
                        ),
                        if (!isCorrect)
                          Text(
                            'Correct answer: $correctAnswer',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white70,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
