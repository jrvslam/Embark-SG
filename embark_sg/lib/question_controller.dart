import 'package:embark_sg/persona.dart';
import 'package:embark_sg/result_screen.dart';
import 'package:embark_sg/returningSGduration.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:embark_sg/question.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {

  late PageController _pageController;
  PageController get pageController => this._pageController;

  List<Question> _questions = questtionaire.map(
      (questions) => Question(
        id: questions['id'],
        question: questions['question'],
        preemble: questions['preemble'],
        options: questions['options']),
      ).toList();

  List<Question> get questions => this._questions;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  late int _selectedAns;
  int get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  Persona _person = new Persona(id: 1);
  Persona get person => this._person;

  @override
  void onInit() {
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    _isAnswered = true;
    _selectedAns = selectedIndex;
    _person.updatePath(question.id! - 1, selectedIndex);
  }

  void nextQuestion(int selectedIndex) {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;

      // Logic
      if (_questionNumber.value == 1 && selectedAns == 0) {
        Get.to(ReturningFormState());
      } else if (_questionNumber.value == 2 && selectedAns == 3) {
        _pageController.animateToPage(3,
            duration: Duration(milliseconds: 250),
            curve: Curves.ease);
      } else if (_questionNumber.value == 3) {
        _pageController.animateToPage(4,
            duration: Duration(milliseconds: 250),
            curve: Curves.ease);
      } else if (_questionNumber.value == 5 && _person.questionPath[2] == 3) {
        _pageController.animateToPage(6,
            duration: Duration(milliseconds: 250),
            curve: Curves.ease);
      } else {
        _pageController.nextPage(
            duration: Duration(milliseconds: 500),
            curve: Curves.ease);
      }

    } else {
      Get.to(ResultScreen());
    }
  }

  void updateQnNo(int index) {
    _questionNumber.value = index + 1;
  }
}