class QuizQuestion {
  const QuizQuestion(
    this.questionText,
    this.answerOptions,
  );
  final String questionText;
  final Map<String, bool> answerOptions;
}

final questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    {
      'Widgets': true,
      'Functions': false,
      'Classes': false,
      'Methods': false,
    },
  ),
  QuizQuestion('How are Flutter UIs built?', 
    {
      'By combining widgets in a tree-like structure': true,
      'By writing HTML code': false,
      'By using XML files': false,
      'By configuring JSON files': false,
    },
  ),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    {
      'To hold mutable state that can change over time': true,
      'To hold immutable state that never changes': false,
      'To define the app\'s theme': false,
      'To manage navigation between screens': false,
    },
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    {
      'StatelessWidget': true,
      'StatefulWidget': false,
      'Both are equally good': false,
      'None of the above': false,
    },
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    {
      'The UI is not updated': true,
      'The UI is updated': false,
      'The closest StatefulWidget is updated': false,
      'Any nested StatefulWidgets are updated': false,
    },
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    {
      'The UI is updated': true,
      'The closest StatefulWidget is updated': false,
      'Any nested StatefulWidgets are updated': false,
    },
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    {
      'By calling setState()': true,
      'By calling updateData()': false,
      'By calling updateUI()': false,
      'By calling updateState()': false,
    },
  ),
  QuizQuestion(
    'Which of these is a valid Dart type?',
    {
      'int': true,
      'integer': false,
      'float': false,
      'doublePrecision': false,
    },
  ),
  QuizQuestion(
    'What is the correct way to declare a list of strings in Dart?',
    {
      'List<String> names = [\'Alice\', \'Bob\', \'Charlie\'];': true,
      'String[] names = [\'Alice\', \'Bob\', \'Charlie\'];': false,
      'var names = (\'Alice\', \'Bob\', \'Charlie\');': false,
      'Array<String> names = [\'Alice\', \'Bob\', \'Charlie\'];': false,
    },
  ),
  QuizQuestion(
    'How do you create a function in Dart?',
    {
      'void greet() { print(\'Hello!\'); }': true,
      'function greet() { print(\'Hello!\'); }': false,
      'def greet() { print(\'Hello!\'); }': false,
      'func greet() { print(\'Hello!\'); }': false,
    },
  ),
];
