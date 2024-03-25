import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(const QuizPage());
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  // Question q1 = Question(q: 'you cannot walk with your feet.',a: false);

  List<Widget> icons = [

  ];

  List<Question> questionBank = [
    Question(q: 'you cannot walk with your feet.', a: false),
    Question(q: 'programmers write code a lot.', a: true),
    Question(q: 'drinking water is an easy thing to do.', a:true)
  ];

  //
  // List<String> questions = [
  //
  //   'programmers write code a lot.',
  //   'drinking water is an easy task to do.',
  // ];
  int questionNumber = 0;


  List<bool> answers = [
    false,
    true,
    true,
  ];


  void changeIndex(){

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Center(
                  child: Card(
                    color: Colors.white24,
                    child: Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                        child: Text(questionBank[questionNumber].questionText,
                          style: const TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    setState(
                      () {
                        bool correctAnswer = answers[questionNumber];
                        if (correctAnswer){
                          icons.add(
                            const Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                          );
                        }else{
                          icons.add(
                            const Icon(
                              Icons.close,
                              color: Colors.red,
                            ),
                          );
                        }
                        questionNumber++;

                      },
                    );
                  },
                  child: const Text(
                    'True',
                    style: TextStyle(
                        fontSize: 40,
                        backgroundColor: Colors.red,
                        color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      bool correctAnswer = answers[questionNumber];
                      if (!correctAnswer){
                        icons.add(
                          const Icon(
                            Icons.check,
                            color: Colors.blue,
                          ),
                        );
                      }else{
                        icons.add(
                          const Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        );
                      }
                      questionNumber++;
                    });
                  },
                  child: const Text(
                    'False',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ),
              Row(
                children: icons,
              )
            ],
          ),
        ),
      ),
    );
  }
}