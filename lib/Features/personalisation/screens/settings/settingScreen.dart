import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Containers/primary_header_constiner.dart';
import 'package:tsports/Common/widgets/appbar/appbar.dart';
import 'package:tsports/Common/widgets/images/app_rounded_images.dart';
import 'package:tsports/Common/widgets/images/app_rounded_small_image.dart';
import 'package:tsports/Common/widgets/list_tiles/setting_menu_tile.dart';
import 'package:tsports/Common/widgets/list_tiles/user_profile_tiles.dart';
import 'package:tsports/Common/widgets/texts/section_headline_text.dart';
import 'package:tsports/Features/personalisation/screens/profile/ProfileScreen.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --- header
            appPrimaryHeaderConatiner(
                child: Column(
              children: [
                /// -- Appbar
                appAppBar(
                  title: Text(
                    "Account",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: myColors.white),
                  ),
                ),

                /// -- user profile tile
                appUserProfileTile(
                  onPressed: () => Get.to(() => ProfileScreen()),
                ),
                const SizedBox(height: mySizes.spaceBtwSections),
              ],
            )),

            /// --- body
            Padding(
              padding: EdgeInsets.all(mySizes.defaultSpace),
              child: Column(
                children: [
                  appSectionHeadline(
                    title: "Account Setting",
                    showActionButton: false,
                  ),
                  SizedBox(
                    height: mySizes.spaceBtwItems,
                  ),
                  appSettingMenuTile(
                      icon: Iconsax.safe_home,
                      title: 'My Addresses',
                      subTitle: 'Set shopping delivery address'),
                  appSettingMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subTitle: "Add remove products and move to checkout"),
                  appSettingMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subTitle: 'In-progress and Completed Orders'),
                  appSettingMenuTile(
                      icon: Iconsax.bank,
                      title: 'Bank Account',
                      subTitle: 'Withdraw balance to registered bank account'),
                  appSettingMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subTitle: 'List of all the discounted coupons'),
                  appSettingMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subTitle: 'Set any kind of notification message'),
                  appSettingMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subTitle: 'Manage data usage and connected accounts'),

                  // -- App Settings

                  SizedBox(height: mySizes.spaceBtwSections),

                  appSectionHeadline(
                      title: "App Settings", showActionButton: false),

                  SizedBox(height: mySizes.spaceBtwItems),

                  appSettingMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subTitle: 'Upload Data to your Cloud firebase'),

                  appSettingMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),

                  appSettingMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  appSettingMenuTile(
                      icon: Iconsax.image,
                      title: 'HD Image Quality',
                      subTitle: 'Set image quality to be seen',
                      trailing: Switch(value: false, onChanged: (value) {})),

                  /// Logout Button

                  const SizedBox(height: mySizes.spaceBtwSections),

                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('Logout')),
                  ), // SizedBox

                  SizedBox(height: mySizes.spaceBtwSections * 1.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
