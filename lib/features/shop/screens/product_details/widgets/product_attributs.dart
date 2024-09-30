import 'package:flutter/material.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/chips/choice_chip.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/texts/product_price_text.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/texts/product_title_text.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/texts/section_heading.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:yt_ecommerce_admin_panel/utils/helpers/helper_functions.dart';
import 'package:yt_ecommerce_admin_panel/utils/theme/widget_themes/chip_theme.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const TSectionHeading(
                      title: 'Variations', showActionButton: false),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                              title: 'Price : ', smallSize: true),

                          /// Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),

                          ///Sale Price
                          const TProductPriceText(price: '20'),
                        ],
                      ),
                      Row(
                        children: [
                          const TProductTitleText(
                              title: 'Stock : ', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// Variation Description
              const TProductTitleText(
                title:
                    'This is The Description of the Product and it can go to max 4 Lines',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Colours',showActionButton: false,),
            SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                    text: "Green", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "Blue", selected: true, onSelected: (value) {}),
                TChoiceChip(
                    text: "Yellow", selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Sizes',showActionButton: false,),
            SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                    text: "EU 34", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "EU 36", selected: true, onSelected: (value) {}),
                TChoiceChip(
                    text: "EU 38", selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
