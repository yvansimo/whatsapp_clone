import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chat.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int i) {
            return Container(
              padding: EdgeInsets.fromLTRB(3.0, 0, 3.0, 0),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Chat()));
                },
                title: Text(
                  'Nom',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text('Message de nom'),
                leading: CircleAvatar(
                  backgroundColor: Colors.green[700],
                  child: Icon(Icons.android),
                ),
                trailing: Text(
                  '${DateTime.now().hour}'+':'+'${DateTime.now().second}',
                  style: TextStyle(
                    fontSize: 12.0
                  ),
                ),
              ),
            );
          },
        ),
      ]
    );
  }
}
