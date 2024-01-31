import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Containers/circular_container.dart';
import 'package:tsports/Common/widgets/appbar/appbar.dart';
import 'package:tsports/Common/widgets/products/cart/coupon_widget.dart';
import 'package:tsports/Common/widgets/success_screen/SuccessScreen.dart';
import 'package:tsports/Features/shop/screens/Cart/widgets/cart_items.dart';
import 'package:tsports/Features/shop/screens/Checkout/widgets/billin_amount_section.dart';
import 'package:tsports/Features/shop/screens/Checkout/widgets/billing_address_section_widget.dart';
import 'package:tsports/Features/shop/screens/Checkout/widgets/billing_payment_section_widget.dart';
import 'package:tsports/NavigationMenu.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = myHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: appAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(mySizes.defaultSpace),
          child: Column(
            children: [
              /// -- items in cart
              const appCartItems(
                showAddRemoveButton: false,
              ),
              const SizedBox(
                height: mySizes.spaceBtwSections,
              ),

              /// -- Coupon Textfield
              const appCouponCodeWidget(),
              const SizedBox(
                height: mySizes.spaceBtwSections,
              ),

              /// -- Billing Section
              appCircularContainer(
                  padding: const EdgeInsets.all(mySizes.md),
                  showBorder: true,
                  backgroundColor: isDark ? myColors.black : myColors.white,
                  child: const Column(
                    children: [
                      /// Pricing
                      appBillingAmountSection(),
                      SizedBox(
                        height: mySizes.spaceBtwItems,
                      ),

                      /// Divider
                      Divider(),
                      SizedBox(
                        height: mySizes.spaceBtwItems,
                      ),

                      /// Payment Methods
                      appBillingPaymentSection(),
                      SizedBox(
                        height: mySizes.spaceBtwItems,
                      ),

                      /// Address
                      appBillingAddressSection(),
                    ],
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(mySizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => SuccessScreen(
                Title: "Payment Success!",
                LottieImage:
                    "assets/images/animations/Animation_watermelon_walking.json",
                SubTitle: "Your item will be shipped soon!",
                onPressed: () => Get.offAll(NavigationMenu()),
              )),
          child: Text("Checkout \$245.00"),
        ),
      ),
    );
  }
}
