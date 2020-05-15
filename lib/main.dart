import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final String organization_name = 'インカレオーランサークル パッション';

    final AssetImage organization_image = AssetImage('images/aika.png');

    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('ホーム'),),
        backgroundColor: Colors.blue.shade200,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.yellow,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('ホーム')),
            BottomNavigationBarItem(icon: Icon(Icons.photo_album), title: Text('アルバム')),
            BottomNavigationBarItem(icon: Icon(Icons.event), title: Text('カレンダー')),
            BottomNavigationBarItem(icon: Icon(Icons.forum), title: Text('掲示板')),
          ],
          fixedColor: Colors.blueAccent,
          type: BottomNavigationBarType.fixed,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  children: <Widget>[
                    Text(organization_name,
                      style: TextStyle(
                      ),
                    ),
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: organization_image,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                ),
              ),
              FlatButton(
                child: Text('広報'),
              ),
              FlatButton(
                child: Text('企画'),
              ),
            ],
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 40,
                backgroundImage: organization_image,
              ),
              Text(organization_name),
            ],

          )
        ),
      ),
    );
  }
}