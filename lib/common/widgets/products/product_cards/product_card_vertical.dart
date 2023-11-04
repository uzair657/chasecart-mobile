import 'package:chasecart/utils/constants/colors.dart';
import 'package:chasecart/utils/constants/sizes.dart';
import 'package:chasecart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../styles/shadows.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey :TColors.white,
      ),
    );
  }
}
