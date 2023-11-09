import 'package:chasecart/common/widgets/appbar/appbar.dart';
import 'package:chasecart/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:chasecart/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:chasecart/common/widgets/texts/section_heading.dart';
import 'package:chasecart/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/sizes.dart';
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            TPrimaryHeaderContainer(
                child: Column(
                  children: [
                    TAppBar(title: Text('Account',style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),),),
                    /// User Profile
                    const TUserProfileTitle(),
                    const SizedBox(height: TSizes.spaceBtwSections,),
                  ],
            )),

            /// Body
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Account Settings
                  const TSectionHeading(title: 'Account Settings',showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  const SettingsMenuTile(title: 'My Address', subTitle:'Set Shopping delivery address', icon:Iconsax.safe_home,),
                  const SettingsMenuTile(title: 'My Cart', subTitle:'Add, remove products and move to checkout', icon:Iconsax.shopping_cart,),
                  const SettingsMenuTile(title: 'My Orders', subTitle:'In-Progress and Completed Orders', icon:Iconsax.bag_tick,),
                  const SettingsMenuTile(title: 'Bank Account', subTitle:'Withdraw balance to registered bank account', icon:Iconsax.bank,),
                  const SettingsMenuTile(title: 'My Coupons', subTitle:'List of all the discounted coupons', icon:Iconsax.discount_shape,),
                  const SettingsMenuTile(title: 'Notifications', subTitle:'Set any kind of notification message', icon:Iconsax.notification,),
                  const SettingsMenuTile(title: 'Account Privacy', subTitle:'Manage data usage and connected accounts', icon:Iconsax.security_card,),

                  /// App Settings
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  const TSectionHeading(title: 'App Settings', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const SettingsMenuTile(title: 'Load Data', subTitle:'Upload Data to your Cloud Firebase', icon:Iconsax.document_upload,),
                  SettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based location',
                    trailing: Switch(value: true, onChanged: (value){}),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value){}),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality ',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: true, onChanged: (value){}),
                  ),

                  /// Logout Button
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  SizedBox(width: double.infinity, child: OutlinedButton(onPressed: (){}, child: const Text('Logout'),),),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


