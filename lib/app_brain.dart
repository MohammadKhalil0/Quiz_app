import 'question.dart';

class AppBrain {
  int _questionNumber = 0;
  final List<Question> _questionGroup = [
    Question(
      q: 'The number of planets in the solar system is eight planets',
      i: 'images/image-1.jpg',
      a: true,
    ),
    Question(
      q: 'Cats are carnivorous animals',
      i: 'images/image-2.jpg',
      a: true,
    ),
    Question(
      q: 'China is located on the African continent',
      i: 'images/image-3.jpg',
      a: false,
    ),
    Question(
      q: 'The Earth is flat and not spherical',
      i: 'images/image-4.jpg',
      a: false,
    ),
    Question(
      q: 'Humans can survive without eating meat',
      i: 'images/image-5.jpg',
      a: true,
    ),
    Question(
      q: 'The sun revolves around the Earth and the Earth revolves around the moon',
      i: 'images/image-6.jpg',
      a: false,
    ),
    Question(q: 'Animals do not feel pain', i: 'images/image-7.jpg', a: false),
  ];

  List get questionGroup => _questionGroup;

  String getQuestionText() => _questionGroup[_questionNumber].questionText;

  String getQuestionImage() => _questionGroup[_questionNumber].questionImage;

  bool getQuestionAnswer() => _questionGroup[_questionNumber].questionAnswer;

  void nextQuestion() {
    if (_questionNumber < _questionGroup.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionGroup.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}