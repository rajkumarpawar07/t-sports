import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Containers/circular_container.dart';
import 'package:tsports/Common/widgets/appbar/appbar.dart';
import 'package:tsports/Features/personalisation/screens/address/add_new_address.dart';
import 'package:tsports/Features/personalisation/screens/address/widgets/single_address.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        backgroundColor: myColors.primary,
        child: const Icon(
          Iconsax.add,
          color: myColors.white,
        ),
      ),
      appBar: appAppBar(
        showBackArrow: true,
        title: Text(
          "Addresses",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(mySizes.defaultSpace),
          child: Column(
            children: [
              SingleAddressWidget(selectedAddress: false),
              SingleAddressWidget(selectedAddress: true),
              SingleAddressWidget(selectedAddress: false),
              SingleAddressWidget(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
