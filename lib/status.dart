import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green[700],
                  child: Icon(Icons.android),
                ),
                title: Text("Mon statut", style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text("Appuyez pour ajouter un statut"),
              ),
              Container(
                height: 25,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                    ),
                    Text(
                      "Mises à jour récentes",
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
  //                    height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, i){
                      return Container(
                        padding: EdgeInsets.fromLTRB(2.0, 0, 2.0, 0),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.green[700],
                            child: Icon(Icons.android),
                          ),
                          title: Text("Nom", style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text("Aujourd'hui, ${DateTime.now().hour}" + ":" + "${DateTime.now().minute}"),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ]
      );
  }
}
