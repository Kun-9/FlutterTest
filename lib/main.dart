import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppBar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                print('shopping click');
              }),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/image1.jpeg'),
              ),
              accountName: Text('kun'),
              accountEmail: Text('st_@naver.com'),
              onDetailsPressed: () {
                print("hello");
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0)),
              ),
              // otherAccountsPictures: const [
              //   CircleAvatar(
              //     backgroundImage: AssetImage('assets/image2.jpeg'),
              //   ),
              //   CircleAvatar(
              //     backgroundImage: AssetImage('assets/image2.jpeg'),
              //   ),
              // ],
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('HOME'),
              onTap: () {
                print('click home');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('SETTINGS'),
              onTap: () {
                print('click setting');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: () {
                print('click qeustion');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
