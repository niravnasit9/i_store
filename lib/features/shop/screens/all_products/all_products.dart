import 'package:flutter/material.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/appbar/appbar.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/products/sortable/sortable_products.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/models/product_model.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Popular Products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: TSortableProducts(
            product: product,
          ),
        ),
      ),
    );
  }
}
