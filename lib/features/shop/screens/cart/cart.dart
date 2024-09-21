import 'package:chasecart/common/widgets/appbar/appbar.dart';
import 'package:chasecart/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:chasecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding:  EdgeInsets.all(TSizes.defaultSpace),

        /// Items in Cart
        child: TCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){},child: const Text("CHECKOUT \$269"),),
      ),
    );
  }
}


