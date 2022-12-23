import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:quizapp_project/app/routes/app_pages.dart';
import 'package:quizapp_project/constant.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0, right: 20, left: 20),
          child: ListView(children: [
            SizedBox(
              height: 30,
            ),
            Icon(Icons.lightbulb_rounded, color: Colors.amber[300], size: 80),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Flutter Quiz App',
                style: TextStyle(fontSize: 25, color: kWhiteColor),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text('Learn * Take Quiz * Repeat',
                  style: TextStyle(fontSize: 14, color: kWhiteColor)),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40.0, left: 40),
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.QUIZ_PAGE);
                },
                child: Text('Play'),
                style: ElevatedButton.styleFrom(
                  onSurface: kButtonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40.0, left: 40),
              child: OutlinedButton(
                onPressed: () {
                  Get.toNamed(Routes.TOPIC_PAGE);
                },
                child: Text('Topic'),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 2.0, color: kButtonColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
