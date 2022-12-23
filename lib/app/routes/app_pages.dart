import 'package:get/get.dart';

import '../modules/home_page/bindings/home_page_binding.dart';
import '../modules/home_page/views/home_page_view.dart';
import '../modules/quiz_page/bindings/quiz_page_binding.dart';
import '../modules/quiz_page/views/quiz_page_view.dart';
import '../modules/result_page/bindings/result_page_binding.dart';
import '../modules/result_page/views/result_page_view.dart';
import '../modules/topic_page/bindings/topic_page_binding.dart';
import '../modules/topic_page/views/topic_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => const HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.QUIZ_PAGE,
      page: () => const QuizPageView(),
      binding: QuizPageBinding(),
    ),
    GetPage(
      name: _Paths.TOPIC_PAGE,
      page: () => const TopicPageView(),
      binding: TopicPageBinding(),
    ),
    GetPage(
      name: _Paths.RESULT_PAGE,
      page: () => const ResultPageView(),
      binding: ResultPageBinding(),
    ),
  ];
}
