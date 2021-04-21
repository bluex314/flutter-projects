import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
              ),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/naruto_avatar.jpg'),
              ),
              Text(
                'Naruto',
                style: TextStyle(fontFamily: 'Ninja', fontSize: 40),
              ),
              Text(
                'Ninja',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 0),
                child: Column(
                  children: <Widget>[
                    Card(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                      child: ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.deepOrange,
                        ),
                        title: Text(
                          '+81 3-6427-2314',
                          style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                    Card(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                      child: ListTile(
                        leading: Icon(
                          Icons.mail,
                          color: Colors.deepOrange,
                        ),
                        title: Text(
                          'narutousamaki@yahoo.com',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
