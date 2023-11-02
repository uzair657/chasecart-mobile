import 'package:chasecart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:chasecart/features/shop/screens/home/widgets/home_categories.dart';

import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}






