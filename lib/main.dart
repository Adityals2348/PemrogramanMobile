import 'package:flutter/material.dart';
import 'package:myapp/Home%20Page.dart';

void main() {
  runApp(MaterialApp(
    title: 'MyApp',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  LoginPage createState() => LoginPage();
}

class LoginPage extends State<MyApp> {
  String _email, _password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.50, vertical: 50.50),
        child: Column(
          children: <Widget>[
            new Container(
                child: Image(
              image: AssetImage('assets/Logo.png'),
            )),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
            ),
            TextField(
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  labelText: 'EMAIL',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              onChanged: (String email) {
                setState(() {
                  _email = email;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  labelText: 'PASSWORD',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              onChanged: (String password) {
                setState(() {
                  _password = password;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.0),
            ),
            Builder(
              builder: (context) => RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Colors.redAccent,
                textColor: Colors.white,
                child: Text("MASUK"),
                onPressed: () {
                  setState(() {
                    if (_email == "Adityals2348@gmail.com" &&
                        _password == "lingga123") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    } else {
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Salah, Ulangi Kembali",
                          ),
                          duration: Duration(seconds: 1),
                        ),
                      );
                    }
                  });
                },
                splashColor: Colors.lightBlueAccent,
              ),
            )
          ],
        ),
      )),
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('SELAMAT DATANG'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
    );
  }
}
