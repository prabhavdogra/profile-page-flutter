// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: ProfilePage(),
    ));

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int characterLevel = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            title: Text('Character Card'),
            backgroundColor: Colors.grey[850],
            centerTitle: true,
          ),
          body: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Center(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/564x/62/79/2d/62792d55af118fe359ba974dc144bd61--april--romance-anime.jpg'),
                      radius: 60,
                    ),
                  ),
                ),
                Divider(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                  child: Text(
                    'Name:',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      color: Colors.grey[600],
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                  child: Text(
                    'KAORI MIYAZONO',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow[600],
                      fontSize: 25,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                  child: Text(
                    'Character Level:',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      color: Colors.grey[600],
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                  child: Text(
                    '$characterLevel',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow[600],
                      fontSize: 25,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Icon(
                          Icons.mail,
                          color: Colors.grey[500],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 30, 0, 0),
                        child: Text(
                          'diditreachher@ylia.com',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            color: Colors.grey[600],
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ], // children: <widgets>[],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                characterLevel += 1;
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.grey[800],
          )),
    );
  }
}
