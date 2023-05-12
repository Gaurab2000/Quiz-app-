import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Bgcontainer extends StatelessWidget {
  const Bgcontainer( this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return  Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/quiz-logo.png', width: 200,
            color: const Color.fromARGB(64, 255, 253, 253)),
            const SizedBox(height: 20),
             Text(
              "Learn flutter the fun way!",
              style: GoogleFonts.lato(
                color:const Color.fromARGB(255, 247, 173, 245),
                fontSize: 24,

              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: startQuiz,
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepPurple),
                  icon: const Icon(Icons.arrow_left),
              label: const Text('StartQuiz'),
            )
          ],
        ),
      
    );
  }
}
