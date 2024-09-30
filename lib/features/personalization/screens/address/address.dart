import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/appbar/appbar.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:yt_ecommerce_admin_panel/features/personalization/screens/address/widgets/single_address.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/sizes.dart';
import 'add_new_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(const AddNewAddressScreen()),
        child: const Icon(Iconsax.add,color: TColors.white),
        backgroundColor: TColors.primary,
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Addresses',style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            TSingleAddress(selectedAddress: false),
            TSingleAddress(selectedAddress: true),
          ],
        ),),
      ),
    );
  }
}
