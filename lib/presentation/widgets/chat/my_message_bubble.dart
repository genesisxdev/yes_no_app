import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
      Container(
        decoration: const BoxDecoration(
         color: Colors.black
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text('Lorem ipsum dolor, style: TextStyle(color: Colors.white)'),
        ),
      )
     ],
    );
  }
}
