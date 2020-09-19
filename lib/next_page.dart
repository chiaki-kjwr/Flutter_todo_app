import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name);
  final String name:

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        Text(name),
        child: RaisedButton(
          child: Text('戻る'),
          onPressed: () {
            Navigator.pop(context);
          }
        )
      ),
    );
  }
}
