import 'package:chasecart/common/widgets/appbar/appbar.dart';
import 'package:chasecart/common/widgets/layout/grid_layout.dart';
import 'package:chasecart/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:chasecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Popular Products"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              DropdownButtonFormField(
                decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
                onChanged: (value) {},
                items: [
                  'Name',
                  'Higher Prices',
                  'Lower Prices',
                  'Sale',
                  'Newest',
                  'Popularity'
                ].map((option) => DropdownMenuItem(value: option, child: Text(option))).toList(),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              TGridLayout(itemCount: 6, itemBuilder: (_,index)=>const TProductCardVertical()),
            ],
          ),
        ),
      ),
    );
  }
}
