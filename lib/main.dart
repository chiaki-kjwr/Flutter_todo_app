import 'package:flutter/material.dart';

void main() => runApp(TodoApp());

//ステートレス
class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body:Container(
        color: Colors.red,
        child: Text('Todo')
      ),
      RaisedButton(
        child: Text('つぎへ'),
        onPressed: () {
        Navigator.push (
            context,
            MaterialPageRoute(builder: (context) => NextPage('値を渡すよ'),)
          ),
        },
      ),
    initialRoute: '/',
    routes {

    }

    )
  };
}

//ステートフル
