import 'package:flutter/material.dart';
import 'package:whatsapp_clone/bottomfield.dart';
import 'chatexample.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  void handleClick(String value) {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.green[700],
          leading: Padding(
            padding: EdgeInsets.only(top: 10, left: 5),
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
              ),
            ),
          leadingWidth: 20,
          title: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: CircleAvatar(
                    backgroundColor: Colors.green[900],
                    child: Icon(Icons.android, size: 25,),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nom',
                        ),
                        SizedBox(height: 5.0,),
                        Text(
                          "Ajourd'hui à ${DateTime.now().hour}"+":"+"${DateTime.now().second}",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 0.0),
              child: IconButton(
                onPressed: () {

                },
                icon: Icon(Icons.videocam),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 0.0),
              child: IconButton(
                onPressed: () {

                },
                icon: Icon(Icons.call),
              ),
            ),
            PopupMenuButton<String>(
              onSelected: handleClick,
              itemBuilder: (BuildContext context) {
                return {
                  'Afficher contact',
                  'Médias, liens et documents',
                  'Rechercher',
                  'Notifications en sourdine',
                  'Messages éphémères',
                  "Fond d'écran",
                  'Plus'
                }.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            ChatExample(),
            ChatExample(),
            ChatExample(),
            ChatExample(),
            ChatExample(),
            ChatExample(),
          ],
        ),
      ),
      bottomSheet: BottomField(),
    );
  }
}
