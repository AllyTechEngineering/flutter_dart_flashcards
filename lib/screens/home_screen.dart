import 'package:flutter/material.dart';
import 'package:flutter_dart_flashcards/screens/settings_screen.dart';
import 'package:flutter_dart_flashcards/screens/settings_screen.dart';
import '../utilities/constants.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_dart_flashcards/models/flashcard_view.dart';
import 'package:flutter_dart_flashcards/models/flashcard.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Flashcard> _flashcards = [
    Flashcard(question: 'What language does flutter use?', answer: 'Dart'),
    Flashcard(question: 'What langauge does React use?', answer: 'JavaScript'),
    Flashcard(question: 'What langauge does Angular use?', answer: 'JavaScript'),
    Flashcard(question: 'What langauge does Electron use?', answer: 'JavaScript'),
    Flashcard(question: 'What langauge does React Native use?', answer: 'JavaScript')
  ];
  int _currIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              color: Color(kLightBlue),
            ),
            iconSize: 40.0,
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('FlashCard Quiz'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: Color(kLightBlue),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, SettingsScreen.id);
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                height: 250,
                child: FlipCard(
                  front: FlashcardView(text: _flashcards[_currIndex].question),
                  back: FlashcardView(
                    text: _flashcards[_currIndex].answer,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.chevron_left),
                    label: const Text('Prev'),
                  ),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.chevron_right),
                    label: const Text('Prev'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  } //Widget

  void nextCard() {
    setState(() {
      _currIndex = (_currIndex + 1 < _flashcards.length) ? _currIndex + 1 : 0;
    });
  } //nextCard

  void previousCard() {
    setState(() {
      _currIndex = (_currIndex - 1 >= 0) ? _currIndex - 1 : _flashcards.length - 1;
    });
  }
} //class
