import 'package:chasecart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:chasecart/utils/constants/colors.dart';
import 'package:chasecart/utils/constants/sizes.dart';
import 'package:chasecart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: TSizes.spaceBtwItems),
      itemCount: 3,
      itemBuilder: (_, index) => TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.md),
        showBorder: true,
        backgroundColor: isDark ? TColors.dark : TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Row 1 Design
            Row(
              children: [
                /// Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: TSizes.spaceBtwItems / 2),

                /// Status & Date
                /// I used Expanded so This section can take max space and arrow icon should be shifted to end
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Processing",
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                              color: TColors.primary,
                              fontWeightDelta: 1,
                            ),
                      ),
                      Text(
                        "11 Jan 2024",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),

                /// Icon Button
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.arrow_right_34,
                      size: TSizes.iconSm,
                    ))
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            /// ROW 2 DESIGN Order number and shipping date details
            Row(
              children: [
                /// ROW 1
                Expanded(
                  child: Row(
                    children: [
                      /// Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: TSizes.spaceBtwItems / 2),

                      /// Status & Date
                      /// I used Expanded so This section can take max space and arrow icon should be shifted to end
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Order",
                                style: Theme.of(context).textTheme.labelMedium),
                            Text(
                              "[#55619]",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                /// ROW 2
                Expanded(
                  child: Row(
                    children: [
                      /// Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: TSizes.spaceBtwItems / 2),

                      /// Status & Date
                      /// I used Expanded so This section can take max space and arrow icon should be shifted to end
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Shipping Date",
                                style: Theme.of(context).textTheme.labelMedium),
                            Text(
                              "15 Jan 2024",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
