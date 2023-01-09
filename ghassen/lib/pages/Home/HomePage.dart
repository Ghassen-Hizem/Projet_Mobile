import 'package:flutter/material.dart';

import '../../widgets/Project.dart';

class Home extends StatelessWidget {
  static const String routeName = "/home";
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10.0,
            ),
            child:
                IconButton(icon: const Icon(Icons.message), onPressed: () {}),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("Ghassen Hizem"),
                accountEmail: Text("ghassen.hizem@supcom.tn"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("images/collab.jpg"),
                )),
            ListTile(
              title: Text("Projects", style: TextStyle(fontSize: 20)),
              trailing: Icon(Icons.checklist_sharp),
              onTap: () {},
            ),
            ListTile(
              title: Text("Calendar", style: TextStyle(fontSize: 20)),
              trailing: Icon(Icons.calendar_month),
              onTap: () {},
            ),
            ListTile(
              title: Text("Account Settings", style: TextStyle(fontSize: 20)),
              trailing: Icon(Icons.settings),
              onTap: () {},
            ),
            ListTile(
              title: Text("Logout", style: TextStyle(fontSize: 20)),
              trailing: Icon(Icons.logout),
              onTap: () {},
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: ListView(
          children: [
            Project(),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Project(),
            )
          ],
        ),
      ),
    );
  }
}