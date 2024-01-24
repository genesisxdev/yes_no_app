import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/logo.jpeg'),
            ),
            Text('Mi Chico'),
          ],
        ),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return const MyMessageBubble();
                  }),
            ),
            const Text('Mundo'),
          ],
        ),
      ),
    );
  }
}
