import 'package:flutter/material.dart';

void main() {
  runApp(const QuizPage());
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            const Expanded(
              flex: 5,
              child: Text('question part'),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {},
                child: const Text('True'),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {},
                child: const Text('False'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
