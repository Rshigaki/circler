import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final String organization_name = 'インカレオーランサークル パッション';
    final String sub_organization_name = '全体';

    final AssetImage organization_image = AssetImage('images/aika.png');

    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white,
        accentColor: Colors.white70,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ホーム'),
        ),
        backgroundColor: Colors.blue.shade200,
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('ホーム')),
            BottomNavigationBarItem(
                icon: Icon(Icons.photo_album), title: Text('アルバム')),
            BottomNavigationBarItem(
                icon: Icon(Icons.event), title: Text('カレンダー')),
            BottomNavigationBarItem(
                icon: Icon(Icons.forum), title: Text('掲示板')),
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
                    Text(
                      organization_name,
                      style: TextStyle(),
                    ),
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: organization_image,
                    ),
                  ],
                ),
                decoration: BoxDecoration(),
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
        body: ListView(
            children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: organization_image,
                    ),
                    Text(organization_name),
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10,0,0,0),
                      child: Text(
                        '本日の予定',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Text('4/17', style: TextStyle(fontSize: 30)),
                            title: Text('カラオケ'),
                            subtitle: Text('広報'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                        width: double.infinity
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10,0,0,0),
                      child: Text(
                        '最近の投稿',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('コンパ反省'),
                                Text('2020/5/12 13時34分',
                                  style: TextStyle(
                                    color: Colors.teal.shade200
                                  ),
                                ),
                              ],
                            ),
                            subtitle: Text('場ゲロしてすいませんでした。'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('コンパ反省'),
                                Text('2020/5/12 12時57分',
                                  style: TextStyle(
                                      color: Colors.teal.shade200
                                  ),
                                ),
                              ],
                            ),
                            subtitle: Text('うんちしてすいませんでした。'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('コンパ反省'),
                                Text('2020/5/12 11時28分',
                                  style: TextStyle(
                                      color: Colors.teal.shade200
                                  ),
                                ),
                              ],
                            ),
                            subtitle: Text('壁壊してすいませんでした。'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                        width: double.infinity
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10,0,0,0),
                      child: Text(
                        '直近の予定',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Text('4/19', style: TextStyle(fontSize: 30)),
                            title: Text('旅行'),
                            subtitle: Text('全体'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Text('4/21', style: TextStyle(fontSize: 30)),
                            title: Text('コンパ'),
                            subtitle: Text('全体'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
      ),
    );
  }
}

