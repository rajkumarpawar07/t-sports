import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Common/widgets/appbar/appbar.dart';
import 'package:tsports/Common/widgets/images/app_rounded_small_image.dart';
import 'package:tsports/Common/widgets/texts/section_headline_text.dart';
import 'package:tsports/Features/personalisation/screens/profile/widgets/appProfileMenu.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(
        showBackArrow: true,
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(mySizes.defaultSpace),
          child: Column(
            children: [
              /// -- profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    appRoundedSmallImage(
                      makeItRounded: true,
                      image: myImages.userProfile,
                      height: 80,
                      width: 80,
                    ),
                    TextButton(
                        onPressed: () {}, child: Text("Change Profile Picture"))
                  ],
                ),
              ),

              /// Details
              const SizedBox(
                height: mySizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: mySizes.spaceBtwItems,
              ),
              const appSectionHeadline(
                title: "Profile Information",
                showActionButton: false,
              ),
              const SizedBox(
                height: mySizes.spaceBtwItems,
              ),

              appProfileMenu(
                  onPressed: () {}, title: "Name", value: "Rajkumar Pawar"),

              appProfileMenu(
                  title: "Username", value: 'rajkumar0707', onPressed: () {}),

              const SizedBox(height: mySizes.spaceBtwItems),

              const Divider(),

              const SizedBox(height: mySizes.spaceBtwItems),

              /// Heading Personal Info

              const appSectionHeadline(
                title: 'Personal Information',
                showActionButton: false,
              ),

              const SizedBox(height: mySizes.spaceBtwItems),

              appProfileMenu(
                title: 'User ID',
                value: '45689',
                onPressed: () {},
                icon: Iconsax.copy,
              ),

              appProfileMenu(
                title: "E-mail",
                value: 'pawarrajkumar0707@gmail.com',
                onPressed: () {},
              ),
              appProfileMenu(
                title: "Phone Number",
                value: '+92-9146530955',
                onPressed: () {},
              ),

              appProfileMenu(
                title: 'Gender',
                value: 'Male',
                onPressed: () {},
              ),

              appProfileMenu(
                title: "Date of Birth",
                value: '07 July, 2002',
                onPressed: () {},
              ),
              Divider(),
              SizedBox(
                height: mySizes.spaceBtwItems,
              ),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Close Account",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
