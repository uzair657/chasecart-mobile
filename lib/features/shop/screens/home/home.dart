import 'package:chasecart/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:chasecart/features/shop/screens/all_products/all_products.dart';
import 'package:chasecart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:chasecart/features/shop/screens/home/widgets/home_categories.dart';
import 'package:chasecart/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:chasecart/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///Appbar
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Searchbar
                  TSearchContainer(
                    text: 'Search in Store',
                    onTap: (){},
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Categories
                  const Padding(
                    padding: EdgeInsets.only(
                      left: TSizes.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        TSectionHeading(title: 'Popular Categories',showActionButton: false,textColor:Colors.white,),
                        SizedBox(height: TSizes.spaceBtwItems),
                        /// Categories
                        THomeCategories(),
                        SizedBox(height: TSizes.spaceBtwSections,),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
             Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Promo Slider
                  const TPromoSlider(banners: [TImages.promoBanner2,TImages.promoBanner3,TImages.promoBanner1],),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  /// Heading
                  TSectionHeading(title: 'Popular Products',onPressed: ()=> Get.to(()=>const AllProducts()),),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  /// Popular Products
                  TGridLayout(itemCount: 4, itemBuilder: (_,index)=>const TProductCardVertical(),),
                ],
              ),


            ),
          ],
        ),
      ),
    );
  }
}












