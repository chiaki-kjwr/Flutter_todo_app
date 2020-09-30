import 'package:flutter/material.dart';

//カウントアップする機能を作る
class CounterStore extends ChangeNotifier {
  var count = 0;

　countUP() {
  count++;
  notifyListeners();
}
}

//statefulWidgetで入力したデータをホーム画面に渡す

// class AddRecipeToHome extends StatefulWidget {
//   @override
//   _AddRecipeToHomeState createState() => _AddRecipeToHomeState();
// }

// class _AddRecipeToHomeState extends State<AddRecipeToHome> {
//   Widget build(BuildContext context) {
//     //フォーカスノードのインスタンスを作成
//     final _recipecostFocusNode = FocusNode();

//     //①フォームの値を取得するためにEditingControllerを定義
//     final myController = TextEditingController();

//     //onChangedでフォームのデータを入手する場合
//     //String _recipe;

//     //非同期通信で、外部からデータを取得
//     //Future()

//     return Scaffold(
//       //scaffoldの中でappBarを使用
//       appBar: AppBar(
//         title: Text('レシピ追加画面'),
//         leading: Icon(Icons.add_alert),
//       ),
//       body: ConstrainedBox(
//         constraints: BoxConstraints.expand(),
//         child: Container(
//           child: Center(
//             child: Column(
//               children: <Widget>[
//                 TextFormField(
//                   //②定義したmyControllerに、フォームからきた値を格納
//                   controller: myController,
//                   decoration: InputDecoration(
//                     labelText: '料理名',
//                     hintText: '豚の生姜焼き',
//                   ),
//                   //フォーカスを作成
//                   onFieldSubmitted: (_) {
//                     FocusScope.of(context).requestFocus(_recipecostFocusNode);
//                   },
//                   // onChanged: (value) {
//                   //   _recipe = value;
//                   // },
//                 ),
//                 TextFormField(
//                   //ここにcontrollerを記載してしまうと上の値が格納されてしまう！！！
//                   //controller: myController,
//                   //keyboardType: TextInputType.number,
//                   decoration: InputDecoration(
//                     labelText: '食材費',
//                     hintText: '300',
//                   ),
//                   focusNode: _recipecostFocusNode,
//                   //数字以外が入力されたらメッセージを返す様にする

//                   // validator: (value) {
//                   //   if (double.tryParse(value) == null) {
//                   //     return '数字を入力してください';
//                   //   }
//                   //   return null;
//                   // },
//                 ),
//                 RaisedButton(
//                   onPressed: () {
//                     //print(_myController),
//                     //テキストフォームで入力された値をダイアログに表示
//                     return showDialog(
//                       context: context,
//                       builder: (context) {
//                         return AlertDialog(
//                           //myController.textにしないと、text形式で値が表示されない！！！
//                           content: Text(myController.text),
//                           //content: Text('${myController}です')
//                         );
//                       },
//                     );
//                   },
//                   child: Text('レシピを登録する'),
//                 ),
//                 RaisedButton(
//                   onPressed: () {
//                     _incrementalCounter;
//                   },
//                   child: Text('カウントアップ'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
