import 'package:chasecart/common/widgets/appbar/appbar.dart';
import 'package:chasecart/common/widgets/images/t_rounded_image.dart';
import 'package:chasecart/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:chasecart/common/widgets/texts/section_heading.dart';
import 'package:chasecart/utils/constants/image_strings.dart';
import 'package:chasecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TAppBar(
        title: Text("Sports"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Main Banner
              const TRoundedImage(
                width: double.infinity,
                imageUrl: TImages.promoBanner1,
                height: null,
                applyImageRadius: true,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              /// Sub Categories
              Column(
                children: [
                  /// Heading 
                  TSectionHeading(title: "Sports Shirts",onPressed: (){},),
                  const SizedBox(height: TSizes.spaceBtwItems/2),
                  /// Product Card
                  const TProductCardHorizontal(),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
