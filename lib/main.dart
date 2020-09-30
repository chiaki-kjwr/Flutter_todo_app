import 'package:flutter/material.dart';
import 'package:mytodoapp/add_recipe_page.dart';
import 'package:provider/provider.dart';
import 'package:mytodoapp/add_recipe_page_to_home.dart';

void main() => runApp(CookApp());

//アプリのトップページのWidget

//テキスト入力フォームで入力された値を表示する(StatelessWidgetだけで作成できたのはなぜ？？)
class CookApp extends StatelessWidget {

  //var titleText = 'レシピ一覧';

  final count = context.select((CounterStore store) => store.count);
  context.read<CounterStore>().incrementCounter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //下記のHomeクラスを呼び出している
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //titleText変数を後に使うので定義。
  //定義しないとnot defiendのエラーになる
  final String titleText = 'レシピ一覧です';

  var count = 0;

  incrementalCounter() {
    setState(() {
      count++;
    });
  }

  //constは何のために記載するの？→
  //コンストラクタの引数部分に、thisを付けてメンバ変数を書くことで、その変数を初期化している
  //const Home({this.titleText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      home: ChangeNotifierProvider(
        create: (context) => CounterStore(),
        child:  CookApp(),
      ),
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

                  // onPressed: () async {
                  //   final result = await Navigator.of(context).push(
                  //     MaterialPageRoute(
                  //         builder: (context) {
                  //           return AddRecipeToHome();
                  //         },
                  //         //モーダルで表示
                  //         fullscreenDialog: true),
                ),
                RaisedButton(
                  //変数、関数を定義した後その関数を呼び出す！
                  onPressed: () {
                    incrementalCounter();
                  },
                  child: Text('$count'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
