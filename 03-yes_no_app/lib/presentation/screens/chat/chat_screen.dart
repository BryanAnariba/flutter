import 'package:flutter/material.dart';

import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://i0.wp.com/www.latinpopbrasil.com.br/wp-content/uploads/2016/08/maite-perroni-lancara-novo-album_547881.jpg?fit=660%2C330&ssl=1'),
          ),
        ),
        title: const Text('My Sweet Love ❤️'),
        centerTitle: false,
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
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ((index % 2 == 0) ? const MyMessageBubble() : const HerMessageBubble());
                },
              ) 
            ),
            const MessageFieldBox()
          ],
        )
      )
    );
  }
}