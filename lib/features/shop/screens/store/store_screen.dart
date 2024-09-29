import 'package:chasecart/common/widgets/appbar/appbar.dart';
import 'package:chasecart/common/widgets/appbar/tab_bar.dart';
import 'package:chasecart/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:chasecart/common/widgets/layout/grid_layout.dart';
import 'package:chasecart/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:chasecart/common/widgets/texts/section_heading.dart';
import 'package:chasecart/common/widgets/brands/brand_card.dart';
import 'package:chasecart/features/shop/screens/brand/all_brands.dart';
import 'package:chasecart/features/shop/screens/store/widgets/category_tab.dart';
import 'package:chasecart/utils/constants/sizes.dart';
import 'package:chasecart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/colors.dart';
class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
              backgroundColor: isDark ? TColors.black : TColors.white,
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
                    TSectionHeading(title: 'Featured Brands',onPressed: ()=>Get.to(()=>const AllBrandsScreen())),
                    const SizedBox(height: TSizes.spaceBtwItems / 1.5,),

                    /// Brand Container
                    TGridLayout(itemCount: 4, mainAxisExtent: 80,itemBuilder: (_,index){
                      return const TBrandCard(showBorder: false,);
                    })
                  ],
                ),
              ),
              /// Tabs
              bottom: const TTabBar(
                tab: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronic')),
                  Tab(child: Text('Cloths')),
                  Tab(child: Text('Cosmetics')),
                ],
              ),
            ),
          ];
        },
          body:const TabBarView(
            children:[
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
        ),
        ),
      ),
    );
  }
}





