import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/brands/brand_show_case.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/layouts/grid_layout.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/texts/section_heading.dart';
import 'package:yt_ecommerce_admin_panel/features/personalization/models/category_model.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/models/product_model.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/screens/all_products/all_products.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/image_strings.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key, required this.category, required this.product,
  });
  final ProductModel product;
final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    // final isDark = THelperFunctions.isDarkMode(context);
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [Padding (
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            ///   Brands
            const TBrandShowcase(images: [
              TImages.productImage1,
              TImages.productImage2,
              TImages.productImage3,
            ],),
            const SizedBox(height: TSizes.spaceBtwItems),

            ///   Products
            TSectionHeading(title: 'You Might Like',onPressed: ()=>Get.to(()=> AllProducts(product: product,))),
            const SizedBox(height: TSizes.spaceBtwItems),

            TGridLayout(itemCount: 4, itemBuilder: (_,index)=> TProductCardVertical(product: product,)),
            const SizedBox(height: TSizes.spaceBtwSections),

          ],
        ),
      )],
    );
  }
}
