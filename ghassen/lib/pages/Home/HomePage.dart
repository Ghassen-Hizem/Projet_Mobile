import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../widgets/Project.dart';

class User {
  final int id;
  final String Nom;
  final String Prenom;
  final String Email;
  User({
    this.id = 0,
    this.Nom = "",
    this.Prenom = "",
    this.Email = "",
  });
}

class Home extends StatefulWidget {
  static const String routeName = "/home";

  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var a = User();
  Future<User> getRequest() async {
//fetching the Data
    String url = "http://localhost:3000/users";
    final response = await http.get(Uri.parse(url));
    var responseData = json.decode(response.body);
//Creating a variable to store the data in
    User user = User(
        id: responseData['data'][0]['ID'],
        Nom: responseData['data'][0]['Nom'],
        Prenom: responseData['data'][0]['Prenom'],
        Email: responseData['data'][0]['Email']);
//returning the current user of the application
    this.a = user;
    return user;
  }

  late Future<User> list;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = getRequest();
  }

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
        child: FutureBuilder<User>(
          future: list,
          builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
            if (snapshot.hasData) {
              return ListView(
                padding: const EdgeInsets.all(0),
                children: <Widget>[
                  UserAccountsDrawerHeader(
                      accountName: Text(this.a.Nom + "  " + this.a.Prenom),
                      accountEmail: Text(this.a.Email),
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
                    title: Text("Account Settings",
                        style: TextStyle(fontSize: 20)),
                    trailing: Icon(Icons.settings),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Logout", style: TextStyle(fontSize: 20)),
                    trailing: Icon(Icons.logout),
                    onTap: () {},
                  )
                ],
              );
            }
            ;

            return const CircularProgressIndicator();
          },
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
