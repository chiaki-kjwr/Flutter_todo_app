import 'package:flutter/material.dart';
import 'package:mytodoapp/add_recipe_page.dart';

void main() => runApp(CookApp());

//アプリのトップページのWidget

//テキスト入力フォームで入力された値を表示する
class CookApp extends StatelessWidget {
  //var titleText = 'レシピ一覧';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //下記のHomeクラスを呼び出している
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String titleText = 'レシピ一覧です';

  //constは何のために記載するの？
  //const Home({this.titleText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(titleText),
      ),
      body: ConstrainedBox(
        //画面全体に表示
        constraints: BoxConstraints.expand(),
        child: Container(
          constraints: BoxConstraints.expand(),
          child: Center(
            child: Column(
              children: <Widget>[
                RaisedButton(
                  child: Text('レシピを追加する'),
                  color: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddRecipe(),
                          //モーダルで表示
                          fullscreenDialog: true),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
