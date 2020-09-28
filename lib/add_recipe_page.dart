import 'package:flutter/material.dart';
//import 'package:mytodoapp/main.dart';

class AddRecipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scaffoldの中でappBarを使用
      appBar: AppBar(
        title: Text('レシピ追加画面'),
        leading: Icon(Icons.add_alert),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('戻る'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
