import 'package:chasecart/common/widgets/texts/product_price_text.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../utils/constants/sizes.dart';
class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButton=true});
  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
      const SizedBox(height: TSizes.spaceBtwSections),
      itemCount: 3,
      itemBuilder: (_, index) =>  Column(
        children: [
          /// Cart Items
          const TCartItem(),
          if(showAddRemoveButton) const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          if(showAddRemoveButton) const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Add Remove Button Row with total price
              Row(
                children: [
                  /// Extra space
                  SizedBox(width: 70),
                  /// Cart Item Add Remove Button
                  TProductQuantityWithAddRemoveButton(),
                ],
              ),
              /// Product Total Price
              TProductPriceText(price: "269"),
            ],
          ),
        ],
      ),
    );
  }
}
