import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Common/widgets/appbar/appbar.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- AppBar
      appBar: appAppBar(
        title: Text("Reviews & Ratings"),
      ),

      /// -- body
      body: SingleChildScrollView(),
    );
  }
}
