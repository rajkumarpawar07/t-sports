import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Containers/circular_container.dart';

import 'package:tsports/Common/widgets/images/app_rounded_images.dart';
import 'package:tsports/Features/shop/controllers/home_screen_controller.dart';
import 'package:tsports/Utils/constants/colors.dart';

import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appPPromoSlider extends StatelessWidget {
  const appPPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeScreenController());
    return Column(children: [
      CarouselSlider(
        items: banners.map((url) => appRoundedImage(imageUrl: url)).toList(),
        options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) =>
                controller.updatePageIndicatior(index)),
      ),
      const SizedBox(
        height: mySizes.spaceBtwItems,
      ),
      Center(
        child: Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                appCircularContainer(
                  margin: const EdgeInsets.only(right: 10),
                  height: 4,
                  width: 20,
                  backgroundColor: controller.carousalCurrentIndex.value == i
                      ? myColors.primary
                      : myColors.grey,
                ),
            ],
          ),
        ),
      )
    ]);
  }
}
