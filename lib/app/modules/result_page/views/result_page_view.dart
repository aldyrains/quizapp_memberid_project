import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/result_page_controller.dart';

class ResultPageView extends GetView<ResultPageController> {
  const ResultPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResultPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ResultPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
