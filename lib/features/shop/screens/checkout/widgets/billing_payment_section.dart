import 'package:flutter/material.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        TSectionHeading(
          title: "Payment Method",
          buttonTitle: "Change",
          onPressed: (){},
        ),
        const SizedBox(height: TSizes.spaceBtwSections / 2),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: isDark ? TColors.light : TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: const Image(image: AssetImage(TImages.visa), fit: BoxFit.contain),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2,),
            Text("Visa Card",style: Theme.of(context).textTheme.bodyLarge,),
          ],
        ),
      ],
    );
  }
}
