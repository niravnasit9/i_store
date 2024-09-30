import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/layouts/grid_layout.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/shimmers/vertical_product_shimmer.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/texts/section_heading.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/controller/product/product_controller.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/models/product_model.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/screens/all_products/all_products.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/screens/home/widgets/home_categories.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  //   Searchbar
                  const TSearchContainer(
                    text: "Search in Store",
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  //   Categories
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        TSectionHeading(
                          title: "Popular Categories",
                          onPressed: () {},
                          showActionButton: false,
                          textcolor: TColors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),
                        // Categories
                        const THomeCategories(),
                      ],
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            //   Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Promo Slider
                  const TPromoSlider(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Heading
                  TSectionHeading(
                      title: "Popular Products",
                      onPressed: () =>
                          Get.to(() => AllProducts(product: product))),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// Popular Products
                  Obx(
                    () {
                      if (controller.isLoading.value) {
                        return const TVerticalProductShimmer();
                      }

                      if (controller.featuredProducts.isEmpty) {
                        return Center(
                            child: Text('No Data Found!',
                                style: Theme.of(context).textTheme.bodyMedium));
                      }
                      return TGridLayout(
                          itemCount: controller.featuredProducts.length,
                          itemBuilder: (_, index) => TProductCardVertical(
                              product: controller.featuredProducts[index]));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
