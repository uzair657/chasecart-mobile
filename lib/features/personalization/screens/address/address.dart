import 'package:chasecart/common/widgets/appbar/appbar.dart';
import 'package:chasecart/features/personalization/screens/address/add_new_address.dart';
import 'package:chasecart/features/personalization/screens/address/widgets/single_address.dart';
import 'package:chasecart/utils/constants/colors.dart';
import 'package:chasecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///DaRK Mode
    // final dark = THelperFunctions.isDarkMode(context);
    // final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> Get.to(()=> const AddNewAddressScreen()),
        backgroundColor: TColors.primary,
        child: const Icon(Iconsax.add, color: TColors.white),
      ),
      appBar: TAppBar(
        title: Text('Addresses',style: Theme.of(context).textTheme.headlineSmall,),
        showBackArrow: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TSingleAddress(selectedAddress: false),
              TSingleAddress(selectedAddress: true),
              TSingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
