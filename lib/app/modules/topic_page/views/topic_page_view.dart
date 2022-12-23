import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/topic_page_controller.dart';

class TopicPageView extends GetView<TopicPageController> {
  const TopicPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TopicPageView'),
        centerTitle: true,
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
