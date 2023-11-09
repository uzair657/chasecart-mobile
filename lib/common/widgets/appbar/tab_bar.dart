import 'package:chasecart/utils/constants/colors.dart';
import 'package:chasecart/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({super.key, required this.tab});
  final List<Widget> tab;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Material(
      color: isDark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tab,
        isScrollable: true,
        indicatorColor: TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
        labelColor: isDark ? TColors.white : TColors.primary,

      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
