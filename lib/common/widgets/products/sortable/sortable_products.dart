import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/layouts/grid_layout.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/models/product_model.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/sizes.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key, required this.product,
  });
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///  DropDown
        DropdownButtonFormField(
          onChanged: (value) {},
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ].map((option) => DropdownMenuItem(value: option,child: Text(option))).toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),

        ///  Products
        TGridLayout(itemCount: 10, itemBuilder: (_,index)=> TProductCardVertical(product: product,))
      ],
    );
  }
}
