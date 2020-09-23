import 'package:flutter/material.dart';

class AddRecipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //scaffoldの中でappBarを使用
        appBar: AppBar(
          title: Text('レシピ追加画面'),
          leading: Icon(Icons.add_alert),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('レシピを追加！！！'),
          ),
        ),
      ),
    );
  }
}
