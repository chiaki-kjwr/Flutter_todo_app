import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        child: RaisedButton(
          child: Text('戻る'),
          onPressed: () {
            Navigator.pop（context）；
          }
        )
      ),
    );
  }
}
