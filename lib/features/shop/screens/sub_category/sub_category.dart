import 'package:flutter/material.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/appbar/appbar.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/images/t_rounded_image.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/texts/section_heading.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/image_strings.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///  Banners
              const TRoundedImage(
                  imageurl: TImages.banner2,
                  width: double.infinity,
                  applyImageRadius: true),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///  Sub-Categories
              Column(
                children: [
                  ///  heading
                  TSectionHeading(title: 'Sports Shirts', onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            const TProductCardHorizontal(),
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: TSizes.spaceBtwItems),
                        itemCount: 4),
                  ),
                ],
              ),
              Column(
                children: [
                  ///  heading
                  TSectionHeading(title: 'Sports Shirts', onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            const TProductCardHorizontal(),
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: TSizes.spaceBtwItems),
                        itemCount: 4),
                  ),
                ],
              ),
              Column(
                children: [
                  ///  heading
                  TSectionHeading(title: 'Sports Shirts', onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            const TProductCardHorizontal(),
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: TSizes.spaceBtwItems),
                        itemCount: 4),
                  ),
                ],
              ),
              Column(
                children: [
                  ///  heading
                  TSectionHeading(title: 'Sports Shirts', onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            const TProductCardHorizontal(),
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: TSizes.spaceBtwItems),
                        itemCount: 4),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
