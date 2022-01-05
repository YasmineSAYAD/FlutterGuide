import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width:double.infinity,
      color: Colors.white,
      child:RaisedButton(
        
        color: Colors.blueGrey,
        textColor: Colors.white,
        
        child:Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}