import 'package:flutter/material.dart';


class Result extends StatelessWidget{
  final int resultScore;
  final VoidCallback _resetHandler;

  Result(this.resultScore,this._resetHandler);
  String get resultPhrase{
    var resultText='You did it!';
    if(resultScore<=20){
      resultText='You are awesome and innocent!';
    }else{
      if(resultScore<=30){
        resultText='Pretty likeable!';
      }
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    
    return Center(
      child:
      Column(
        
        children:<Widget>[ 
             Text(resultPhrase, 
                style: 
                TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  ),
                   textAlign: TextAlign.center,
                  ),
                  FlatButton(child:Text('Restart Quiz'),
                  textColor: Colors.blue,
                  onPressed: _resetHandler),
                  ],
      ),
    );
  }
}