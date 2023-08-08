import 'package:flutter/material.dart';

class chat extends StatefulWidget {
  const chat({super.key});

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  List anxiety_questions = [
    "We understand that you might be going through a lot lately, we can understand your feelings. We are here to help, please answer some questions so we'll be able to identify your situation better",
    "How often do you find yourself overwhelmed with worry or fear in your daily life? "
  ];
  List anxiety_ans = [
    "I rarely experience excessive worry or fear in my daily life.",
    "I frequently experience intense worry or fear that interferes with my daily functioning."
  ];
  List chat = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 204, 221, 226),
      appBar: AppBar(
        automaticallyImplyLeading: false,

        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          }, 
          icon: const Icon(Icons.arrow_back)
        ),
        backgroundColor: const Color.fromARGB(255, 111, 88, 75),
        title: const Text(
          'Serene',
          style: TextStyle(
            shadows: <Shadow>[
              Shadow(
                offset: Offset(2.0, 3.0),
                blurRadius: 3,
                color: Color.fromARGB(104, 0, 0, 0),
              ),
            ],
            fontSize: 25,
          ),
        ),
        elevation: 0,
      ),

      body: Column(
        children: [
          const Text(
            'Questions',
            style: TextStyle(
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2.0, 3.0),
                  blurRadius: 3,
                  color: Color.fromARGB(104, 0, 0, 0),
                ),
              ],
              fontSize: 25,
            ),
          ),
          _questionwidget()
        ]
      )
    );
  }

  _questionwidget() {
    return Column(
      children: const [
        Text(
          'Question 1/5',
          style: TextStyle(
            shadows: <Shadow>[
              Shadow(
                offset: Offset(2.0, 3.0),
                blurRadius: 3,
                color: Color.fromARGB(255, 111, 88, 75),
              ),
            ],
            fontSize: 25,
          ),
        )
      ],
    );
  }
}
