import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var number = '0';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Calculator',
            style: TextStyle(
              color: Colors.white60,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.black87,
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Card(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Text(
                        '$number',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  )
                ],
              ), //card
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    FloatingActionButton(
                      child: const Icon(Icons.backspace),
                      onPressed: () {
                        setState(
                          () {
                            number = '0';
                          },
                        );
                      },
                    ),
                  ],
                ),
              ), //delete
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            number += '7';
                          });
                        },
                        child: const Text(
                          '7',
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            number += '8';
                          });
                        },
                        child: const Text(
                          '8',
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            number += '9';
                          });
                        },
                        child: const Text(
                          '9',
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: FloatingActionButton(
                        child: const Icon(Icons.add),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ), //789
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            number += '4';
                          });
                        },
                        child: const Text(
                          '4',
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            number += '5';
                          });
                        },
                        child: const Text(
                          '5',
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            number += '6';
                          });
                        },
                        child: const Text(
                          '6',
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: FloatingActionButton(
                        child: const Icon(Icons.close),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ), //456
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            number += '1';
                          });
                        },
                        child: const Text(
                          '1',
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            number += '2';
                          });
                        },
                        child: const Text(
                          '2',
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            number += '3';
                          });
                        },
                        child: const Text(
                          '3',
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: FloatingActionButton(
                        child: const Icon(Icons.minimize),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ), //123
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        color: Colors.orange,
                        icon: const Text(
                          '=',
                          style: TextStyle(fontSize: 50),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          '0',
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          '.',
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: FloatingActionButton(
                        child: Text('/',style: TextStyle(fontSize: 40),),
                        onPressed: (){

                      },),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
