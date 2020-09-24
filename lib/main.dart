import 'package:flutter/material.dart';
import 'package:mytodoapp/add_recipe_page.dart';

void main() => runApp(CookApp());

//アプリのトップページのWidget
class CookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //画面遷移のルーティングを設定
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => CookApp(),
        '/addrecipepage': (BuildContext context) => AddRecipePage(),
      },
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
      ),
      home: Scaffold(
        //scaffoldの中でappBarを使用
        appBar: AppBar(
          title: Text('レシピ一覧', textAlign: TextAlign.right),
          leading: Icon(Icons.add_alert),
        ),
        body: ListView(
          children: <Widget>[
            Text('生姜焼き'),
            Text('ゴーヤチャンプルー'),
            Text('わかめスープ'),
            Text('なすとベーコンのチーズ焼き'),
            TextField(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Text(
            'レシピを追加しよう',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                settings: RouteSettings(name: "/"),
                builder: (BuildContext context) => AddRecipePage(),
              ),
            ),
          },
        ),
      ),
    );
  }
}
