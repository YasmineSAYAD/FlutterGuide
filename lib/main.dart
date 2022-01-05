import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

/*
void main() {
  runApp(MyApp());
}
*/
void main() =>runApp(MyApp());
class MyApp extends StatefulWidget{ 
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  } 
  
}

class MyAppState extends State<MyApp>{

  var _questionIndex=0;
  var _totalScore=0;

  void _resetQuiz(){
    setState(() {
       _questionIndex=0;
       _totalScore=0;
    });
   

  }
    final questions=const [
      {'questionText':'What\'s your favorite color?',
       'answers':[
         {'text':'Black','score':10}, 
         {'text':'White','score':20} ,
         {'text':'Red','score':15}, 
         {'text':'Green','score':5} ,
         {'text':'Yellow','score':5} 
         ],
      },

      {'questionText':'What\'s your favorite animal?', 
       'answers':[
         {'text':'Dog','score':10}, 
         {'text':'Cat','score':20} ,
         {'text':'Mouse','score':15}, 
         {'text':'Snake','score':5} ,
         {'text':'Rabbit','score':5} 
         
        ],
      },

      {'questionText':'Who\'s your favorite instructor?', 
       'answers':[
         {'text':'Max','score':10}, 
         {'text':'Max','score':20} ,
         {'text':'Max','score':15}, 
         {'text':'Max','score':5} ,
         {'text':'Max','score':5} 
        ],
      },
      
      ];
  void _answerQuestions(int score){
    _totalScore+=score;
    setState(() {
      _questionIndex++;
    });
   
   }
  @override
  Widget build(BuildContext context) {
    
  
   return MaterialApp(
     home:Scaffold(
       appBar: AppBar(title: Text("My first App"),
       ),

       body: _questionIndex < questions.length ?
       Quiz(
         answerQuestions:_answerQuestions,
         questions:questions,
         questionIndex:_questionIndex,
         )
       : Result(_totalScore,_resetQuiz)
       
      

     ),
     );
  }
}