import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  static HomeScreenController get instance => Get.find();

  final carousalCurrentIndex = 0.obs;

  void updatePageIndicatior(index) {
    carousalCurrentIndex.value = index;
  }
}
