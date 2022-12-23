import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp_project/app/routes/app_pages.dart';
import 'package:quizapp_project/constant.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    title: "Application",
    darkTheme: ThemeData.dark(),
    initialRoute: Routes.HOME_PAGE,
    getPages: AppPages.routes,
  ));
}
