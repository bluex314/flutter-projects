import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'message_bubble.dart';

class MessageStreamBuilder extends StatelessWidget {
  MessageStreamBuilder({this.currentUserEmail});

  final String currentUserEmail;
  final _fireStore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _fireStore.collection('messages').orderBy('dateTime').snapshots(),
      builder: (context, snapshot) {
        List<MessageBubble> messageWidgets = [];
        if (snapshot != null) {
          if (snapshot.data != null) {
            final messages = snapshot.data.docs.reversed;
            for (var message in messages) {
              final messageText = message.data()['text'];
              final senderEmail = message.data()['sender'];
              messageWidgets.add(
                MessageBubble(
                  sender: senderEmail,
                  text: messageText,
                  isMe: senderEmail == currentUserEmail,
                ),
              );
            }
          }
        }
        return ListView(
          reverse: true,
          children: messageWidgets,
        );
      },
    );
  }
}
