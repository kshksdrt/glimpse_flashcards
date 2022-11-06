import 'package:flutter/material.dart';

class FlashCardStack extends StatelessWidget {
  const FlashCardStack({super.key, required this.flashcards});

  final List<String> flashcards;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: flashcards.map((e) => Text(e)).toList(),
    ));
  }
}
