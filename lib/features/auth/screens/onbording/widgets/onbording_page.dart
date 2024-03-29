import 'package:d_store/utils/constants/sizes.dart';
import 'package:d_store/utils/device/device_utils.dart';
import 'package:flutter/material.dart';

class OnBordingPage extends StatelessWidget {
  const OnBordingPage(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.img});
  final String title, subtitle, img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        children: [
          SizedBox(
            width: DeviceUtils.screenWidth(context) * 0.8,
            height: DeviceUtils.screenHeight(context) * 0.6,
            child: Image.asset(
              img,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
