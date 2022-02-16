import 'package:mcq/models/entities/question/question.dart';
import 'package:mcq/repository/local/dummy/dummy_constants.dart';

class QuestionBrain {
  late List<Question> _questions;
  int _currentQuestionIndex = 0;
  bool _isLastQuestion = false;

  QuestionBrain() {
    _questions = getSystemMCQ();
  }

  List<Question> getSystemMCQ() {
    return DummyConstants.questions
        .map<Question>((questionObject) => Question.fromJson(questionObject))
        .toList()
      ..shuffle();
  }

  String get question {
    return _questions[_currentQuestionIndex].question;
  }

  List<String> get choices {
    return _questions[_currentQuestionIndex].choices..shuffle();
  }

  String get correctAnswer {
    return _questions[_currentQuestionIndex].correctAnswer;
  }

  bool get isLastQuestion {
    return _isLastQuestion;
  }

  void nextQuestion() {
    if (!_isLastQuestion) {
      _currentQuestionIndex++;
    }
    _isLastQuestion = _currentQuestionIndex == _questions.length - 1;
  }
}
