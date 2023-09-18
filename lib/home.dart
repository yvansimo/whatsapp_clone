import 'package:flutter/material.dart';
import 'package:whatsapp_clone/calls.dart';
import 'package:whatsapp_clone/chats.dart';
import 'package:whatsapp_clone/settings.dart';
import 'package:whatsapp_clone/status.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  TabController? controller;
  IconData? currentIcon = Icons.message_rounded;

  @override
  void initState(){
    super.initState();
    controller = TabController(initialIndex:0, length: 3, vsync: this);
    controller?.addListener(() {
      setState(() {
        switch (controller?.index) {
          case 0:
            currentIcon = Icons.message_rounded;
            break;
          case 1:
            currentIcon = Icons.photo_camera;
            break;
          case 2:
            currentIcon = Icons.add_ic_call_sharp;
            break;
        }
      });
    });
  }

  void handleClick(String value) {
    switch (value){
      case 'Paramètres':
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Settings()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text(
          'WhatsApp',
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.camera_alt_outlined),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.search),
            ),
          ),
          PopupMenuButton<String>(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {
                'Nouveau groupe',
                'Nouvelle diffusion',
                'Appareils connectés',
                'Messages importants',
                'Paramètres'
              }.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: controller,
          tabs: [
            GestureDetector(
              child: Tab(
                child: Text("Disc."),
              ),
            ),
            GestureDetector(
              child: Tab(
                child: Text("Statut"),
              ),
            ),
            GestureDetector(
              child: Tab(
                child: Text("Appels"),
              ),
            ),
          ],
        ),
      ),

      body: TabBarView(
        controller: controller,
        children: [
          Chats(),
          Status(),
          Calls(),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        backgroundColor: Colors.green[700],
        child: Icon(currentIcon),
      ),
    );
  }
}
