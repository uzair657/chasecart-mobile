import 'package:chasecart/common/widgets/appbar/appbar.dart';
import 'package:chasecart/common/widgets/texts/section_heading.dart';
import 'package:chasecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text("Brands"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              TSectionHeading(title: "Brands"),
              SizedBox(height: TSizes.spaceBtwItems,)
              /// Brands
            ],

          ),
        ),
      ),
    );
  }
}
