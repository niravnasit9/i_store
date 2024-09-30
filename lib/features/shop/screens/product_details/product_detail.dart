import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/texts/section_heading.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/models/product_model.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/screens/product_details/widgets/product_attributs.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/sizes.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///   1 - Product Image Slider
            TProductImageSlider(product: product),

            ///   2 - Product Details
            Padding(
              padding: const EdgeInsets.only(
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
                right: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  ///  -- Ratings & Share
                  const TRatingAndShare(),

                  ///  -- Price,title,Stock & Brand
                  TProductMetaData(product: product),

                  ///  -- Attributes
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///  -- Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///  -- Description
                  const TSectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a Product Description for Blue Nike Sleeve less vest.There are More Things that can be added but i am practicing nothing else',
                    trimLines: 2,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: 'Less',
                    moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                  ),

                  ///  -- Reviews

                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(title: 'Reviews',showActionButton: false),
                      IconButton(onPressed: () =>Get.to(()=>const ProductReviewsScreen()), icon: const Icon(Iconsax.arrow_right_3),),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
