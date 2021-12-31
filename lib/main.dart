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
        ),
        body: Builder(
          builder: (BuildContext ctx) {
            return Center(
              child: FlatButton(
                child: Text(
                  'show',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.red,
                onPressed: () {
                  Scaffold.of(ctx).showSnackBar(SnackBar(
                    content: Text('hello'),
                  ));
                },
              ),
            );
          },
        ));
  }
}

/*

 */
