import 'package:flutter/material.dart';
import '../../utils/device/device_utility.dart';
import '../../utils/constants/sizes.dart';

class TSpacingStyle{
  static  EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    left: TSizes.defaultSpace,
    bottom: TDeviceUtils.getBottomNavigationBarHeight(),
    right: TSizes.defaultSpace,
  );
}