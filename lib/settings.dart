import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text(
          'Paramètres'
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.search),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10, left: 20),
                child: ListTile(
                  leading: Transform.scale(
                    scale: 1.5,
                    child: CircleAvatar(
                      backgroundColor: Colors.green[700],
                      child: Icon(
                        Icons.android,
                      ),
                    ),
                  ),
                  title: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Nom",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19
                      ),
                    ),
                  ),
                  subtitle: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Infos sur nom",
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 15
                      ),
                    ),
                  ),
                  trailing: Icon(
                    Icons.qr_code,
                    color: Colors.green[700],
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Icon(
                    Icons.key_outlined,
                  ),
                ),
                title: Text(
                  "Compte",
                ),
                subtitle: Text(
                  "Notifications de sécurité, changer de numéro",
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Icon(
                    Icons.lock,
                  ),
                ),
                title: Text(
                  "Confidentialité",
                ),
                subtitle: Text(
                  "Bloquer des contacts, messages éphémères",
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Icon(
                    Icons.emoji_emotions,
                  ),
                ),
                title: Text(
                  "Avatar",
                ),
                subtitle: Text(
                  "Créer, modifier, photo de profil",
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Icon(
                    Icons.message_rounded,
                  ),
                ),
                title: Text(
                  "Discussions",
                ),
                subtitle: Text(
                  "Thèmes, fonds d'écran, historique des discussions",
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Icon(
                    Icons.notifications,
                  ),
                ),
                title: Text(
                  "Notifications",
                ),
                subtitle: Text(
                  "Sonneries des messages, groupes et appels",
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Icon(
                    Icons.circle_outlined,
                  ),
                ),
                title: Text(
                  "Utilisation données et stockage",
                ),
                subtitle: Text(
                  "Utilisation réseau, téléchargement auto.",
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Icon(
                    Icons.public,
                  ),
                ),
                title: Text(
                  "Langue de l'application",
                ),
                subtitle: Text(
                  "Français(langue de l'appareil)",
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Icon(
                    Icons.help_outline,
                  ),
                ),
                title: Text(
                  "Aide",
                ),
                subtitle: Text(
                  "Centre d'aide, contactez-nous, Politique de confidentialité",
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Icon(
                    Icons.people_alt,
                  ),
                ),
                title: Text(
                  "Inviter un contact",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
