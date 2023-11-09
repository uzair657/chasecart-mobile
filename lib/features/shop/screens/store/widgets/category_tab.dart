import 'package:chasecart/common/widgets/layout/grid_layout.dart';
import 'package:chasecart/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:chasecart/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Brands
              const TBrandShowcase(images: [TImages.productImage9,TImages.productImage7,TImages.productImage8],),
              const TBrandShowcase(images: [TImages.productImage24,TImages.productImage25,TImages.productImage6],),
              const SizedBox(height: TSizes.spaceBtwItems,),
              /// Product you may like
              TSectionHeading(title: 'You may like',showActionButton: true,onPressed: (){},),
              const SizedBox(height: TSizes.spaceBtwItems,),
              TGridLayout(itemCount: 4, itemBuilder: (_,index)=> const TProductCardVertical()),
              const SizedBox(height: TSizes.spaceBtwSections,),
            ],
          ),
        ),
      ],
    );
  }
}
