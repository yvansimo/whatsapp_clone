import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

class ChatExample extends StatefulWidget {
  const ChatExample({super.key});

  @override
  State<ChatExample> createState() => _ChatExampleState();
}

class _ChatExampleState extends State<ChatExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, right: 80, left: 10),
            child: Container(
              child: ClipPath(
                clipper: UpperNipMessageClipperTwo(MessageType.receive),
                child: Container(
                  padding: EdgeInsets.only(top: 10, right: 25, left: 25, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                  child: Text(
                    'Message de nom disant que',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, right: 10, left: 100),
            child: Container(
              child: ClipPath(
                clipper: UpperNipMessageClipperTwo(MessageType.send),
                child: Container(
                  padding: EdgeInsets.only(top: 10, right: 25, left: 25, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.green[200],
                  ),
                  child: Text(
                    "Message de nom de disant rien pourtant c'est long et chiant",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
