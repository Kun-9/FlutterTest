import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KUN',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('HELLO'),
        backgroundColor: Colors.grey[400],
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image1.jpeg'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.black87,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'KUN',
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'KUN POWER LEVEL',
              style: TextStyle(
                color: Colors.black87,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '14',
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const <Widget>[
                        Icon(Icons.check_circle_outline),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'using lightsaber',
                          style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(Icons.check_circle_outline),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'face hero tatoo',
                          style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(Icons.check_circle_outline),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'fire flames',
                          style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Center(
                    child: CircleAvatar(
                  backgroundImage: AssetImage('assets/image2.jpeg'),
                  radius: 40.0,
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
