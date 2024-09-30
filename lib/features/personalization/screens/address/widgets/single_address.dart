import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:yt_ecommerce_admin_panel/utils/helpers/helper_functions.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          width: double.infinity,
          padding: const EdgeInsets.all(TSizes.md),
          showBorder: true,
          backgroundColor: selectedAddress
              ? TColors.primary.withOpacity(0.5)
              : Colors.transparent,
          borderColor: selectedAddress
              ? Colors.transparent
              : dark
                  ? TColors.darkerGrey
                  : TColors.grey,
          margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
          child: Stack(
            children: [
              Positioned(
                right: 5,
                top: 3,
                child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,
                    color: selectedAddress
                        ? dark
                            ? TColors.light
                            : TColors.dark
                        : null),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nirav Nasit',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge,),
                  const SizedBox(height: TSizes.sm/2),
                  const Text('+91 9537735692',maxLines: 1,overflow: TextOverflow.ellipsis),
                  const SizedBox(height: TSizes.sm/2),
                  const Text('7,Murlidhar Ro-House,opp.Khodiyar Temple,Odhav Road,Nikol,AHMEDABAD-382350',softWrap: true ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
