import 'package:flutter/material.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:yt_ecommerce_admin_panel/utils/helpers/helper_functions.dart';

import 'brand_card.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          ///   Brand With Product Count
          const TBrandCard(
            showBorder: false,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),

          ///   Brand Top 3 Products Images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: TRoundedContainer(
      height: 100,
      backgroundColor: THelperFunctions.isDarkMode(context)
          ? TColors.darkGrey
          : TColors.light,
      margin: const EdgeInsets.only(right: TSizes.sm),
      padding: const EdgeInsets.all(TSizes.md),
      child: Image(
        image: AssetImage(image),
        fit: BoxFit.contain,
      ),
    ),
  );
}