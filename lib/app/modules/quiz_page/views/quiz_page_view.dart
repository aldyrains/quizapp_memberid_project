import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/quiz_page_controller.dart';

class QuizPageView extends GetView<QuizPageController> {
  const QuizPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuizPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'QuizPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
