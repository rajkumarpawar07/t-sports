import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Common/widgets/appbar/appbar.dart';
import 'package:tsports/Features/shop/screens/order/widgets/order_list_widget.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(
        showBackArrow: true,
        title: Text(
          "My Orders",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(mySizes.defaultSpace),

        /// -- orders
        child: appOderListItems(),
      ),
    );
  }
}
