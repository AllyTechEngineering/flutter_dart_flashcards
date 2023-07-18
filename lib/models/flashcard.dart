class Flashcard {
  final String question;
  final String answer;
  Flashcard({required this.question, required this.answer});
  final List<Flashcard> _flashcards = [
    Flashcard(question: 'What language does flutter use?', answer: 'Dart'),
    Flashcard(question: 'What langauge does React use?', answer: 'JavaScript'),
    Flashcard(question: 'What langauge does Angular use?', answer: 'JavaScript'),
    Flashcard(question: 'What langauge does Electron use?', answer: 'JavaScript'),
    Flashcard(question: 'What langauge does React Native use?', answer: 'JavaScript'),
  ];
}
