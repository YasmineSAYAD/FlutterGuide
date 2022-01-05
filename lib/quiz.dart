import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget{
final List<Map<String,Object>> questions;
final int questionIndex;
final Function answerQuestions;
  Quiz({
    required this.questions,
    required this.answerQuestions,
    required this.questionIndex
   });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Column(children: [
         Question(
           (questions[questionIndex]['questionText']).toString(),
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String,Object>>)
          .map((answer){return Answer(()=>answerQuestions(answer['score']), 
          answer['text'] as String);}).toList()
          
          //Answer(_answerQuestions),
         //ElevatedButton(onPressed: _answerQuestions, child: Text('Answer 1'),),
         //ElevatedButton(onPressed: _answerQuestions, child: Text('Answer 2'),),
         //ElevatedButton(onPressed: _answerQuestions, child: Text('Answer 3'),),
         //ElevatedButton(onPressed: ()=>print('Answer 1 chosen!'), child: Text('Answer 1'),),
         //ElevatedButton(onPressed: answerQuestions, child: Text('Answer 2'),),
         //ElevatedButton(onPressed: (){print('Answer 3 chosen!');}, child: Text('Answer 3'),),
        
       ],
       );
  }
}