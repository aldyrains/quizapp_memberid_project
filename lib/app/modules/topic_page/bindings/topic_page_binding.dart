import 'package:get/get.dart';

import '../controllers/topic_page_controller.dart';

class TopicPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopicPageController>(
      () => TopicPageController(),
    );
  }
}
