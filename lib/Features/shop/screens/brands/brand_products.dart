import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Common/widgets/appbar/appbar.dart';
import 'package:tsports/Common/widgets/brands/brand_card.dart';
import 'package:tsports/Common/widgets/products/sortable/sortable_products.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(
        title: Text(
          "Adidas",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(mySizes.defaultSpace),
          child: Column(
            children: [
              appBrandCard(showBorder: true),
              SizedBox(
                height: mySizes.spaceBtwItems,
              ),
              appSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
