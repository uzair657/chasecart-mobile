
import 'package:chasecart/common/widgets/texts/section_heading.dart';
import 'package:chasecart/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:chasecart/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:chasecart/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:chasecart/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import '../../../../utils/constants/sizes.dart';
class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

            children: [
              /// Product Image Slider
              const TProductImageSlider(),
              /// Product Details
              Padding(
                  padding: const EdgeInsets.only(right: TSizes.defaultSpace,left: TSizes.defaultSpace,bottom: TSizes.defaultSpace),
                child: Column(
                  children: [
                    /// Rating and share Button
                    const TRatingShare(),
                    /// Price , Title , Stock, & Brand
                    const TProductMetaData(),
                    /// Attributes
                    const TProductAttributes(),
                    const SizedBox(height: TSizes.spaceBtwSections,),
                    /// Checkout Button
                    SizedBox(width:double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),
                    const SizedBox(height: TSizes.spaceBtwSections,),
                    /// Description
                    const TSectionHeading(title: 'Description',showActionButton: false,),
                    const ReadMoreText(
                      'This is a product description for blue Nike Shoes. There are more things that can be added but i am just practicing and nothing more ',
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Less',
                      moreStyle: TextStyle(fontSize:14,fontWeight: FontWeight.w800),
                      lessStyle: TextStyle(fontSize:14,fontWeight: FontWeight.w800),

                    ),
                    /// Reviews
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TSectionHeading(title: 'Reviews (169)',showActionButton: false,),
                        IconButton(onPressed: (){}, icon:const Icon(Iconsax.arrow_right_3,size: 18,)),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections,),
                  ],
                ),
              ),
            ],

        ),
      ),
    );
  }
}




