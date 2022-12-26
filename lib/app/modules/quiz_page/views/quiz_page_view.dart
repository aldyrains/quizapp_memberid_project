import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:quizapp_project/constant.dart';

import '../controllers/quiz_page_controller.dart';
import 'component/progress_bar.dart';
import 'component/question_card.dart';

class QuizPageView extends GetView<QuizPageController> {
  const QuizPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Exit'))
          ],
        ),
        body: Stack(
          children: [
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: ProgressBar(),
                  ),
                  SizedBox(height: kDefaultPadding),
                  Expanded(
                    child: PageView.builder(
                      // Block swipe to next qn
                      physics: NeverScrollableScrollPhysics(),
                      controller: controller.pageController,
                      onPageChanged: controller.updateTheQnNum,
                      itemCount: controller.questions.length,
                      itemBuilder: (context, index) =>
                          QuestionCard(question: controller.questions[index]),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
