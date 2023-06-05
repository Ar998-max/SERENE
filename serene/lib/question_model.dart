class Question {
  final String questionText;
  final List<Answer> answerlist;

  Question(this.questionText, this.answerlist);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];

  list.add(Question(
      "How often do you find yourself overwhelmed with worry or fear in your daily life? ",
      [
        Answer("I rarely experience excessive worry or fear in my daily life.",
            false),
        Answer(
            "I frequently experience intense worry or fear that interferes with my daily functioning.",
            true),
      ]));
  list.add(Question(
      "Have you been feeling persistently sad or down for an extended period of time?",
      [
        Answer(
            "I generally feel content and enjoy activities that bring me joy.",
            false),
        Answer(
            "I consistently feel persistently sad or have lost interest in activities that used to bring me joy.",
            true),
      ]));
  list.add(Question(
      "How do you typically respond to and manage stress in your life? ", [
    Answer(
        "I am generally able to manage stress effectively and find healthy coping mechanisms.",
        false),
    Answer(
        "I often feel overwhelmed by stress and struggle to cope with it in a healthy manner.",
        true),
  ]));

  return list;
}
