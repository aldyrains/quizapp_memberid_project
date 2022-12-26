import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp_project/app/routes/app_pages.dart';
import 'package:quizapp_project/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(GetMaterialApp(
    title: "Application",
    darkTheme: ThemeData.dark(),
    initialRoute: Routes.HOME_PAGE,
    getPages: AppPages.routes,
    debugShowCheckedModeBanner: false,
  ));
}

