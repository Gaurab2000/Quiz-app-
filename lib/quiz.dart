import 'package:quiz_app/questions_screen.dart';
import'package:quiz_app/results_screen.dart';
import'package:quiz_app/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/container.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

 
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  Widget? activeScreen;
  @override
  void initState() {
    activeScreen = Bgcontainer(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen =  QuestionsScreen(onSelectAnswer: chooseAnswer,);
    });
  }
  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length ){
      setState(() {
        activeScreen =  ResultsScreen(chosenAnswers: selectedAnswers,onRestart: restartQuiz,);
      });
    }
  }

    void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer,);
    });
  }
  @override
  Widget build(context) {
    
    return  MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: Colors.deepPurple),
             child: activeScreen,
        ),
      ),
      
    );
  }
}
