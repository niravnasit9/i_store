import 'package:flutter/material.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/appbar/appbar.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/brands/brand_card.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/products/sortable/sortable_products.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/models/product_model.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Nike')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TBrandCard(showBorder: true),
              const SizedBox(height: TSizes.spaceBtwSections),

              TSortableProducts(product: product),
            ],
          ),
        ),
      ),
    );
  }
}
