import 'package:chasecart/common/widgets/appbar/appbar.dart';
import 'package:chasecart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:chasecart/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:chasecart/common/widgets/layout/grid_layout.dart';
import 'package:chasecart/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:chasecart/common/widgets/texts/section_heading.dart';
import 'package:chasecart/utils/constants/enums.dart';
import 'package:chasecart/utils/constants/sizes.dart';
import 'package:chasecart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../common/widgets/texts/brand_title_text_with_verified_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium,),
        action: [
          TCartCounterIcon(onPressed: (){},)
        ],
      ),
      body: NestedScrollView(headerSliverBuilder: (_,innerBoxIsScrolled) {
        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
            expandedHeight: 440,
            flexibleSpace: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children:  [
                  /// Search Bar
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const TSearchContainer(text: 'Search In Store',showBorder: true, showBackground: false,padding: EdgeInsets.zero,),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  /// -- Featured Brands
                  TSectionHeading(title: 'Featured Brands',onPressed: (){}),
                  const SizedBox(height: TSizes.spaceBtwItems / 1.5,),

                  /// Brand Container
                  TGridLayout(itemCount: 4, mainAxisExtent: 80,itemBuilder: (_,index){
                    return GestureDetector(
                      onTap: (){},
                      child: TRoundedContainer(
                        padding: const EdgeInsets.all(TSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            /// Icon
                            Flexible(
                              child: TCircularImage(
                                isNetworkImage: false,
                                image: TImages.clothIcon,
                                backgroundColor: Colors.transparent,
                                overlayColor: isDark ? TColors.white : TColors.black,
                              ),
                            ),
                            const SizedBox(width: TSizes.spaceBtwItems / 2,),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const TBrandTitleWithVerifiedIcon(title: 'Nike', branTextSize: TextSizes.large,),
                                  Text(
                                    '269 Products',
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context).textTheme.labelMedium,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  })
                ],
              ),
            ),
          ),
        ];
      }, body:Container(),
      ),
    );
  }
}


