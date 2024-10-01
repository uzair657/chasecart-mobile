import 'package:chasecart/common/widgets/appbar/appbar.dart';
import 'package:chasecart/common/widgets/images/t_circular_image.dart';
import 'package:chasecart/common/widgets/texts/section_heading.dart';
import 'package:chasecart/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:chasecart/utils/constants/image_strings.dart';
import 'package:chasecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const TAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      /// Body
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Section
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.user, width: 80, height: 80,),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
                  ],
                ),
              ),
              /// Details
              const SizedBox(height: TSizes.spaceBtwItems / 2,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),
              /// Heading Profile info
              const TSectionHeading(title: 'Profile Information', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(title: 'Name', value: 'Uzair Ahmad',onPressed: () {  },),
              TProfileMenu(title: 'Username', value: 'uzair69',onPressed: () {  },),

              const SizedBox(height: TSizes.spaceBtwItems,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),
              /// Heading Personal Info
              const TSectionHeading(title: 'Personal Information', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(title: 'User Id', value: '619',onPressed: () {  },icon: Iconsax.copy,),
              TProfileMenu(title: 'E-mail', value: 'ahmaduzair355@gmail.com',onPressed: () {  },),
              TProfileMenu(title: 'Phone Number', value: '+923097250069',onPressed: () {  },),
              TProfileMenu(title: 'Gender', value: 'Male',onPressed: () {  },),
              TProfileMenu(title: 'Date of Birth', value: '11 Jan 2001',onPressed: () {  },),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Delete Account', style: TextStyle(color: Colors.red),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



