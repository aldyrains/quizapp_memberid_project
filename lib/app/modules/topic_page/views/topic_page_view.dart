import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:quizapp_project/constant.dart';

import '../../quiz_page/controllers/quiz_page_controller.dart';
import '../controllers/topic_page_controller.dart';

class TopicPageView extends GetView<QuizPageController> {
  const TopicPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text('Topics'),
      ),
      body: Center(
        child: Text(
          'TopicPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
