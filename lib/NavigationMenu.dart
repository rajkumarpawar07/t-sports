import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Features/personalisation/screens/settings/settingScreen.dart';
import 'package:tsports/Features/shop/screens/Home/HomeScreen.dart';
import 'package:tsports/Features/shop/screens/Store/StoreScreen.dart';
import 'package:tsports/Features/shop/screens/wishlist/wishlistScreen.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    // instance of navigation menu cntrller
    final controller = Get.put(NavigationMenuController());
    final darkMode = myHelperFunctions.isDarkMode(context);
    return Scaffold(
      // -- to use Obx we must have obs variable inside the Obx widget
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          height: 80,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode ? Colors.black : Colors.white,
          indicatorColor: darkMode
              ? Colors.white.withOpacity(0.3)
              : Colors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationMenuController extends GetxController {
  // observed variable
  final Rx<int> selectedIndex = 0.obs;

  // screens
  final screens = [
    /// -- Home screen --
    const HomeScreen(),

    /// -- Store Screen --
    StoreScreen(),

    /// wishlist screen --
    wishlistScreen(),

    /// -- profile screen --
    SettingScreen(),
  ];
}
