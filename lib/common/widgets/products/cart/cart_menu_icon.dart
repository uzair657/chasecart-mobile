import 'package:chasecart/features/shop/screens/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key, required this.onPressed, this.iconColor,
  });
  final VoidCallback onPressed;
  final Color ? iconColor;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(onPressed: ()=> Get.to(()=>const CartScreen()), icon:  Icon(Iconsax.shopping_bag,color: iconColor,)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: dark ? TColors.white:TColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: dark ? TColors.black:TColors.white,fontSizeFactor: 0.8),),),
          ),
        )
      ],
    );
  }
}