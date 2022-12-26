import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp_project/app/modules/quiz_page/models/questions.dart';
import 'package:quizapp_project/constant.dart';

import '../../controllers/quiz_page_controller.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    required this.question,
  });

  final Questions question;

  @override
  Widget build(BuildContext context) {
    QuizPageController _quizpage = Get.put(QuizPageController());
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          padding: EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: kBlackColor),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          padding: EdgeInsets.all(kDefaultPadding),
         
          child: Column(
            children: [
              SizedBox(height: kDefaultPadding / 2),
              ...List.generate(
                question.option.length,
                (index) => Option(
                  index: index,
                  text: question.option[index],
                  press: () => _quizpage.checkAns(question, index),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
