import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'MyApp',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        automaticallyImplyLeading: true,
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.redAccent),
            accountName: Text('Aditya Lingga Saputra'),
            accountEmail: Text('Adityals2348@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/pp.jpg'),
            ),
          ),
          ListTile(
            title: Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Setting"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Profile"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Help"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("About"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      )),
    );
  }
}
