
import 'package:chasecart/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:chasecart/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:flutter/material.dart';



import '../../../../utils/constants/sizes.dart';
class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final isDark = THelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(

            children: [
              /// Product Image Slider
              TProductImageSlider(),
              /// Product Details
              Padding(
                  padding: EdgeInsets.only(right: TSizes.defaultSpace,left: TSizes.defaultSpace,bottom: TSizes.defaultSpace),
                child: Column(
                  children: [
                    /// Rating and share Button
                    TRatingShare()
                  ],
                ),
              ),
            ],

        ),
      ),
    );
  }
}




