import 'package:d_store/utils/constants/image_assets.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(AppSizes.defaultRadius)),
            child: IconButton(
                onPressed: () {},
                icon: SizedBox(
                    width: AppSizes.defaultRadius,
                    height: AppSizes.defaultRadius,
                    child: Image.asset(
                      ImgAssets.googleLogo,
                      fit: BoxFit.cover,
                    )))),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(AppSizes.defaultRadius)),
            child: IconButton(
                onPressed: () {},
                icon: SizedBox(
                    width: AppSizes.defaultRadius,
                    height: AppSizes.defaultRadius,
                    child: Image.asset(
                      ImgAssets.facebookLogo,
                      fit: BoxFit.cover,
                    )))),
      ],
    );
  }
}
