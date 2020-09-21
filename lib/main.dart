import 'package:flutter/material.dart';

void main() => runApp(TodoApp());

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text(
            'youtube_clone',
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Icon(Icons.search),
          ),
          FlatButton(
            child: Icon(Icons.more_vert),
          ),
        ],
        body: Container(
            child: Column(
          children: <Widget>[
            Image,
            network(''),
          ],
        )),
      ),
    );
  }
}
