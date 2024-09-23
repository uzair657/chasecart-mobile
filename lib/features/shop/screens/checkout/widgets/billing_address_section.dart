import 'package:chasecart/common/widgets/texts/section_heading.dart';
import 'package:chasecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: "Shipping Address",
          buttonTitle: "Change",
          onPressed: (){},
        ),
        Text("Uzair Ahmad",style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey,size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text("+92 3097250069", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey,size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Expanded(child: Text("8/4 Shahjamal, Lahore", style: Theme.of(context).textTheme.bodyMedium,softWrap: true,)),
          ],
        ),

      ],
    );
  }
}
