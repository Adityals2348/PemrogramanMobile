import 'package:flutter/material.dart';
import 'Bebek.dart';
import 'Matic.dart';
import 'Sport.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.redAccent,
        automaticallyImplyLeading: true,
      ),
      drawer: _drawerApani(context),
      body: _bodyApani(context),
    );
  }
}

Widget _drawerApani(BuildContext context) {
  return Drawer(
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
  ));
}

Widget _bodyApani(BuildContext context) {
  return ListView(
    children: <Widget>[
      Container(
        height: 210,
        child: Material(
          color: Colors.white,
          child: InkWell(
            splashColor: Colors.brown.shade200,
            highlightColor: Colors.transparent,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Matic(),
                ),
              );
            },
            // column buat bikin baris
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/metik.png',
                        width: 150,
                        height: 150,
                      ),
                      SizedBox(
                        width: 30,
                      ), //buat ngasih jarak antar gambar sama teks
                      Text(
                        'Matic',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Divider(
        color: Colors.black26,
        thickness: 2.5,
        height: 5,
      ),
      Container(
        height: 210,
        child: Material(
          color: Colors.white,
          child: InkWell(
            splashColor: Colors.blueAccent.shade100,
            highlightColor: Colors.transparent,
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => Bebek());
              Navigator.push(context, route);
            },
            // column buat bikin baris
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/bebek.png',
                        width: 150,
                        height: 150,
                      ),
                      SizedBox(
                        width: 30,
                      ), //buat ngasih jarak antar gambar sama teks
                      Text(
                        'Bebek',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Divider(
        color: Colors.black26,
        thickness: 2.5,
        height: 5,
      ),
      Container(
        height: 210,
        child: Material(
          color: Colors.white,
          child: InkWell(
            splashColor: Colors.red.shade300,
            highlightColor: Colors.transparent,
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => Sport());
              Navigator.push(context, route);
            },
            // column buat bikin baris
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/sport.png',
                        width: 150,
                        height: 150,
                      ),
                      SizedBox(
                        width: 30,
                      ), //buat ngasih jarak antar gambar sama teks
                      Text(
                        'Sport',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
