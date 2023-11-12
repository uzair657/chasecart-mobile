
import 'package:chasecart/common/widgets/images/t_circular_image.dart';
import 'package:chasecart/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:chasecart/common/widgets/texts/product_price_text.dart';
import 'package:chasecart/common/widgets/texts/product_title_text.dart';
import 'package:chasecart/utils/constants/enums.dart';
import 'package:chasecart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text('20%',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            /// Price
            Text('\$270', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(price: '175',isLarge: true,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/1.5,),
        /// Title
        const TProductTitleText(title: 'Nike Air'),
        const SizedBox(height: TSizes.spaceBtwItems/1.5,),
        /// Stocks
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),

          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/1.5,),

        /// Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: isDark ? TColors.white : TColors.black,
            ),
            const TBrandTitleWithVerifiedIcon(title: 'Nike',branTextSize: TextSizes.medium,),
          ],
        ),
      ],
    );
  }
}
