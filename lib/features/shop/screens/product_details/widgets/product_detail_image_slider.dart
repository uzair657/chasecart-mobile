import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import '../../../../../common/widgets/icons/t_circular_icon.dart';
import '../../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: isDark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            /// Main Large Image
            const SizedBox(
              height:400,
              child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Center(
                    child: Image(image: AssetImage(TImages.productImage1))
                ),
              ),
            ),
            /// Image Slider
            Positioned(
              bottom: 30,
              right: 0,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (_,__)=> const SizedBox(width: TSizes.spaceBtwItems,),
                  itemCount: 6,
                  itemBuilder: (_,index)=>TRoundedImage(
                    imageUrl: TImages.productImage3,
                    width: 80,
                    border: Border.all(color: TColors.primary),
                    padding: const EdgeInsets.all(TSizes.sm),
                    backgroundColor: isDark ? TColors.dark : TColors.white,
                  ),),
              ),
            ),
            const TAppBar(
              showBackArrow: true,
              action: [
                TCircularIcon(icon: Iconsax.heart5,color: Colors.red,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}