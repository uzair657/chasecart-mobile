import 'package:chasecart/common/widgets/appbar/appbar.dart';
import 'package:chasecart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:chasecart/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:chasecart/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:chasecart/utils/constants/colors.dart';
import 'package:chasecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Items in Cart
              const TCartItems(showAddRemoveButton: false),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Coupon Text Field
              const TCouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Billing Section
              TRoundedContainer(
                padding: EdgeInsets.all(TSizes.md),
                showBorder: true,
                backgroundColor: isDark ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    /// Pricing
                    TBillingAddressSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    /// Divider
                    Divider(),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    /// Payment Method
                    /// Address
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
