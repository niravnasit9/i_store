import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/appbar/appbar.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/icons/t_circular_icon.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/layouts/grid_layout.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/models/product_model.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/screens/home/home.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: const Text("Wishlist"),
        actions: [
          TCircularIcon(icon: Iconsax.add, onPressed: () => HomeScreen(product: product,))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),child: Column(children: [
          TGridLayout(itemCount: 10, itemBuilder: (_,index)=> TProductCardVertical(product: product,)),
        ],),),
      ),
    );
  }
}
