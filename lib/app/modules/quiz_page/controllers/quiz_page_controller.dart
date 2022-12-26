import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quizapp_project/app/modules/quiz_page/models/questions.dart';
import 'package:quizapp_project/app/routes/app_pages.dart';

class QuizPageController extends GetxController
    with SingleGetTickerProviderMixin {
  AnimationController? _animationController;
  Animation? _animation;
  Animation? get animation => _animation;

  PageController? _pageController;
  PageController? get pageController => _pageController;

  bool _isAnswered = false;
  bool get isAnswered => _isAnswered;

  int? _correctAns;
  int? get correctAns => _correctAns;

  int? _selectedAns;
  int? get selectedAns => _selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  List<Questions> _questions = sample_data
      .map(
        (question) => Questions(
            id: question['id'],
            question: question['question'],
            option: question['options'],
            answer: question['answer_index']),
      )
      .toList();
  List<Questions> get questions => this._questions;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<QuerySnapshot<Object?>> getData() async{
    CollectionReference question = firestore.collection("questions");
    return question.get();
  }


  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController!)
      ..addListener(() {
        update();
      });

    _animationController?.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _animationController?.dispose();
    _pageController?.dispose();
  }

  void checkAns(Questions question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    _animationController?.stop();
    update();

    Future.delayed(Duration(seconds: 1), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value !=  questions.length) {
      _isAnswered = false;
      _pageController?.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);

      _animationController?.reset();

      _animationController?.forward().whenComplete(nextQuestion);
    } else {
      Get.toNamed(Routes.RESULT_PAGE);
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
