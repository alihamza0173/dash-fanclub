import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';

class DashBubble extends StatelessWidget {
  const DashBubble({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    Widget textBubble = Expanded(
      child: BubbleNormal(
        text: message,
        isSender: false,
        color: const Color.fromARGB(255, 228, 228, 228),
        tail: true,
      ),
    );

    Widget text = Row(
      children: [
        SizedBox(
          width: 50,
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Image.asset('assets/images/dash.png', fit: BoxFit.cover),
          ),
        ),
        textBubble,
      ],
    );

    return text;
  }
}

class UserBubble extends StatelessWidget {
  const UserBubble({super.key, required this.message, required this.userImage});

  final String message;
  final String userImage;

  @override
  Widget build(BuildContext context) {
    Widget textBubble = Expanded(
      child: BubbleNormal(
        text: message,
        isSender: true,
        color: Color.fromARGB(255, 38, 195, 247),
        tail: true,
      ),
    );

    Widget text = Row(
      children: [
        textBubble,
        SizedBox(
          width: 50,
          child: Padding(
            padding: EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.network(userImage, fit: BoxFit.cover),
            ),
          ),
        ),
      ],
    );

    return text;
  }
}
