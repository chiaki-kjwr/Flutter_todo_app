import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_recipe.dart';

void main() => runApp(CookApp());

//アプリのトップページのWidget
class CookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
      ),
      home: Scaffold(
        //scaffoldの中でappBarを使用
        appBar: AppBar(
          title: Text('レシピ一覧', textAlign: TextAlign.center),
          leading: Icon(Icons.add_alert),
        ),
        body: Center(
          child: RaisedButton(
            child: Text(
              'レシピを追加しよう',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            // onPressed: () {
            //   //レシピ追加画面へ遷移

            //   // Navigator.of(context).pushReplacement(MaterialPageRoute(
            //   //   builder: (context) {
            //   //     return AddRecipe();
            //   //   },
            //   // ));
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => AddRecipe()),
            //   );
            // },
          ),
        ),
      ),
    );
  }
}
