import 'package:flutter/material.dart';


class Question extends StatelessWidget{
  String questiontText;

  Question(this.questiontText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      margin:EdgeInsets.all(10),
      child:Text(
        questiontText, 
        style: TextStyle(fontSize: 28),
               textAlign: TextAlign.center,
       ),
    );
  }
}