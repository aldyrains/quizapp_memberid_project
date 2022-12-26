import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:quizapp_project/app/modules/quiz_page/controllers/quiz_page_controller.dart';
import 'package:quizapp_project/constant.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 20,
      decoration: BoxDecoration(
        border: Border.all(color: kProgressBar, width: 2),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuizPageController>(
          init: QuizPageController(),
          builder: (controller) {
            return Stack(
              children: [
                LayoutBuilder(
                  builder: (context, constraints) => Container(
                    width: constraints.maxWidth * controller.animation?.value,
                    decoration: BoxDecoration(
                        color: kProgressBar,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                Positioned.fill(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${(controller.animation?.value * 30).round()} sec")
                    ],
                  ),
                ))
              ],
            );
          }),
    );
  }
}
