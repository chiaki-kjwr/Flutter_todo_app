import 'package:flutter/material.dart';
import 'package:mytodoapp/main.dart';

class AddRecipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //     brightness: Brightness.dark,
      //     primaryColor: Colors.lightBlue[800],
      //     accentColor: Colors.cyan[600],
      //   ),
      home: Scaffold(
        //scaffoldの中でappBarを使用
        appBar: AppBar(
          title: Text('レシピ一覧'),
          leading: Icon(Icons.add_alert),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('レシピを追加しよう'),
            onPressed: () {
              //レシピ追加画面へ遷移
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) {
                  return AddRecipe;
                },
              ));
            },
          ),
        ),
      ),
    );
  }
}