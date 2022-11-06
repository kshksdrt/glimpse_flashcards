import 'package:flutter/material.dart';

import 'flashcard_stack.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;
  List<String> flashcards = [];

  void _incrementCounter() {
    setState(() {
      _counter++;
      flashcards.add("Flashcard No. $_counter");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(padding: const EdgeInsets.all(16.0), children: [
        Center(
          child: FlashCardStack(flashcards: flashcards),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
