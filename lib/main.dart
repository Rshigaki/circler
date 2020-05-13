import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ホーム'),),
        bottomNavigationBar: BottomNavigationBar(
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
                    Text('インカレオーランサークル パッション',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage('images/aika.png'),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
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

        ),
      ),
    );
  }
}