import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:quizapp_project/app/modules/quiz_page/models/questions.dart';
import 'package:quizapp_project/constant.dart';

import '../../quiz_page/controllers/quiz_page_controller.dart';
import '../controllers/result_page_controller.dart';

class ResultPageView extends GetView<QuizPageController> {
  const ResultPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Questions questions;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text('Result'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: kSecondaryColor),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "${controller.correctAns! * 10}/${controller.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: kSecondaryColor),
              ),
              Spacer(flex: 2),
              
            ],
          )
        ],
      ),
    );
  }
}
