import 'package:chasecart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:chasecart/common/widgets/texts/product_price_text.dart';
import 'package:chasecart/common/widgets/texts/product_title_text.dart';
import 'package:chasecart/common/widgets/texts/section_heading.dart';
import 'package:chasecart/utils/constants/colors.dart';
import 'package:chasecart/utils/constants/sizes.dart';
import 'package:chasecart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        /// Selected Attribute Pricing & Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: isDark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              /// Title , Price and Status
              Row(
                children: [
                  const TSectionHeading(title: 'Variation',showActionButton: false,),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: 'Price: ', smallSize: true,),
                          /// Actual Price
                          Text(
                            '\$250',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),

                          ),
                          /// Sale Price
                          const TProductPriceText(price: '200'),
                        ],
                      ),
                      Row(
                        children: [
                          const TProductTitleText(title: 'Stock: ',smallSize: true,),
                          Text('In Stock',style: Theme.of(context).textTheme.titleMedium,),
                        ],
                      ),
                    ],
                  ),



                ],
              ),
              /// Variation Description
              const TProductTitleText(
                title: 'This is the description of the Product and it can go up to max 4 lines',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        /// Attributes
        Column(
          children: [
            const TSectionHeading(title: 'Colors',showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems / 2,),
            Wrap(
              spacing:8,
              children: [
                TChoiceChip(text: 'Green', selected:false, onSelected: (value){},),
                TChoiceChip(text: 'Red', selected:false, onSelected: (value){},),
                TChoiceChip(text: 'Black', selected:true, onSelected: (value){},),
                TChoiceChip(text: 'Blue', selected:false, onSelected: (value){},),

              ],
            ),

          ],
        ),
        Column(
          children: [
            const TSectionHeading(title: 'Sizes', showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'EU 32', selected:true, onSelected: (value){},),
                TChoiceChip(text: 'EU 34', selected:false, onSelected: (value){},),
                TChoiceChip(text: 'EU 36', selected:false, onSelected: (value){},),
                TChoiceChip(text: 'EU 38', selected:false, onSelected: (value){},),

              ],
            ),

          ],
        ),
      ],
    );
  }
}


