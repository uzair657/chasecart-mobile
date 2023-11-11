import 'package:chasecart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:chasecart/common/widgets/images/t_rounded_image.dart';
import 'package:chasecart/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:chasecart/features/shop/screens/product_details/product_detail.dart';
import 'package:chasecart/utils/constants/colors.dart';
import 'package:chasecart/utils/constants/image_strings.dart';
import 'package:chasecart/utils/constants/sizes.dart';
import 'package:chasecart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../styles/shadows.dart';
import '../../icons/t_circular_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: ()=>Get.to(const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey :TColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail , wishlist button , discount tag
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child:Stack(
                children: [
                  /// Thumbnail Image
                  const TRoundedImage(imageUrl: TImages.productImage2,applyImageRadius: true,),
                  /// Sale Tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('69%',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                    ),
                  ),
                  /// Favourite Icon Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child:TCircularIcon(icon: Iconsax.heart5, color: Colors.red,)),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2,),
            /// Details
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(title: 'Black Nike Air Shoes', smallSize: true,),
                  SizedBox(height: TSizes.spaceBtwItems / 2,),
                  TBrandTitleWithVerifiedIcon(title: 'Nike'),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: TProductPriceText(price: '69.1',),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                      height:TSizes.iconLg * 1.2,
                      width: TSizes.iconLg *1.2,
                      child: Center(child: Icon(Iconsax.add, color: TColors.white,))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}








