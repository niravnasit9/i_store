import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/appbar/appbar.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/brands/brand_card.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/layouts/grid_layout.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/texts/section_heading.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/models/product_model.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/screens/brands/brand_products.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const TSectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => TBrandCard(
                  showBorder: true,
                  onTap:()=> Get.to(() => BrandProducts(product: product,)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
