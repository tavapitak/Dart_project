
import 'dart:io';
class Question {
  String text;
  List<String> options;
  int correctOption;
  Question(this.text, this.options, this.correctOption);
  bool isCorrect(int answer) {
    return answer == correctOption;
  }
}

class Quiz {
  List<Question> _questions = [];
  int _score = 0;

  void addQuestion(Question question) {
    _questions.add(question);
  }
    void start() {
    print("Welcome to the Quiz! Answer the questions by typing the option number.");

    for (int i = 0; i < _questions.length; i++) {
      var question = _questions[i];
      print("\nQuestion ${i + 1}: ${question.text}");
      for (int j = 0; j < question.options.length; j++) {
        print("  ${j + 1}. ${question.options[j]}");
      }

      int? answer;
      while (answer == null || answer < 1 || answer > question.options.length) {
        stdout.write("Your answer (enter the option number): ");
        try {
          answer = int.parse(stdin.readLineSync()!);
        } catch (e) {
          print("Invalid input. Please enter a number.");
        }
      }

      if (question.isCorrect(answer)) {
        print("Correct!");
        _score++;
      } else {
        print("Wrong! The correct answer was ${question.correctOption}: ${question.options[question.correctOption - 1]}");
      }
    }

    _showResults();
  }

  void _showResults() {
    print("\nQuiz Complete!");
    print("Your final score is: $_score/${_questions.length}");
    if (_score == _questions.length) {
      print("Excellent work!");
    } else if (_score > _questions.length ~/ 2) {
      print("Good job!");
    } else {
      print("Better luck next time!");
    }
  }
}

void main() {
  Quiz quiz = Quiz();

  quiz.addQuestion(Question("What is the capital of France?", ["Berlin", "Paris", "Rome", "Madrid"], 2));
  quiz.addQuestion(Question("Which planet is known as the Red Planet?", ["Earth", "Mars", "Jupiter", "Venus"], 2));
  quiz.addQuestion(Question("Who wrote 'Hamlet'?", ["Charles Dickens", "William Shakespeare", "Mark Twain", "Jane Austen"], 2));

  quiz.start();
}
