import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(

        itemCount: 10,
        itemBuilder: (BuildContext context, int i){
            return ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.android),
                backgroundColor: Colors.green[700],
              ),
              title: Text("Nom", style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("Aujourd'hui, ${DateTime.now().hour}" + ":" + "${DateTime.now().minute}"),
              trailing: Icon(Icons.call, color: Colors.green[700],),
            );
          },
        ),
    );
  }
}
