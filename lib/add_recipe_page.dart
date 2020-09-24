import 'package:flutter/material.dart';

//main関数は必ず記載する
void main() => runApp(AddRecipePage());

class AddRecipePage extends StatelessWidget {
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
          child: Column(
            children: <Widget>[
              FloatingActionButton(
                child: Text('レシピを追加！！！'),
              ),
              TextField(),
            ],
          ),
        ),
      ),
    );
  }
}
