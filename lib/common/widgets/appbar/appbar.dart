import 'package:chasecart/utils/constants/colors.dart';
import 'package:chasecart/utils/constants/sizes.dart';
import 'package:chasecart/utils/device/device_utility.dart';
import 'package:chasecart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.action,
      this.leadingOnPress});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? action;
  final VoidCallback? leadingOnPress;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Iconsax.arrow_left), color: isDark ? TColors.white : TColors.dark,)
            : leadingIcon != null
                ? IconButton(onPressed: leadingOnPress, icon: Icon(leadingIcon))
                : null,
        title: title,
        actions:action,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
