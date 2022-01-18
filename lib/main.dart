import 'package:flutter/material.dart';
import 'package:lufiaavi/Dashboard.dart';
import 'package:lufiaavi/Learning.dart';
import 'package:lufiaavi/models/notes_operation.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    title: "LufiaAvi",
    initialRoute: '/',
    routes: {
      '/': (context) => const MyApp(),
      '/Dashboard': (context) => Dashboard(),
      '/Learning': (context) => Learning(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lufia Apps"),
        backgroundColor: Colors.teal[700],
      ),
      backgroundColor: Colors.teal[400],
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text(
                "Lufia Aviyanti",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              accountEmail: new Text("lufia.aviyanti21@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/lufiaavi.jpg'),
              ),
              decoration: new BoxDecoration(color: Colors.cyan[900]),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
            ),
            ListTile(
              leading: Icon(Icons.vpn_key),
              title: Text("Ubah Password"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Tentang"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            MyMenu1(),
            MyMenu2(),
          ],
        ),
      ),
    );
  }
}

class MyMenu1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/Dashboard');
        },
        splashColor: Colors.orange,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.dashboard,
                size: 100.0,
                color: Colors.orange,
              ),
              Text("Note", style: new TextStyle(fontSize: 20.0)),
            ],
          ),
        ),
      ),
    );
  }
}

class MyMenu2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/Learning');
        },
        splashColor: Colors.orange,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.book_online,
                size: 100.0,
                color: Colors.orange,
              ),
              Text("E-Learning", style: new TextStyle(fontSize: 20.0)),
            ],
          ),
        ),
      ),
    );
  }
}
