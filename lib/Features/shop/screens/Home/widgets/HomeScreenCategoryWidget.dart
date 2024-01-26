import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Common/widgets/image_texts_widgets/vertical_image_texts.dart';
import 'package:tsports/Utils/constants/image_strings.dart';

class appHomeCategoryWidget extends StatelessWidget {
  const appHomeCategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 8,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return appVerticalImageText(
                image: myImages.furnitureIcon,
                title: "Furniture",
                textColor: Colors.white,
                onTap: () {},
              );
            }));
  }
}
